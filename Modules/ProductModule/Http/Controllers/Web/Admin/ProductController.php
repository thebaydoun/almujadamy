<?php

namespace Modules\ProductModule\Http\Controllers\Web\Admin;

use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\CategoryManagement\Entities\Category;
use Illuminate\Support\Facades\DB;
use Modules\ProductModule\Entities\Product;
use Modules\BusinessSettingsModule\Entities\Translation;
use Rap2hpoutre\FastExcel\FastExcel;
use Symfony\Component\HttpFoundation\StreamedResponse;

class ProductController extends Controller
{
    private Product $product;

    public function __construct(Product $product, Category $category)
    {
        $this->product = $product;
        $this->category = $category;
    }

    public function index(Request $request): View|Factory|Application
    {
        $search = $request->has('search') ? $request['search'] : '';
        $status = $request->has('status') ? $request['status'] : 'all';
        $queryParams = ['search' => $search, 'status' => $status];

        $products = $this->product
            ->when($request->has('search'), function ($query) use ($request) {
                $keys = explode(' ', $request['search']);
                if (is_array($keys)) {
                    foreach ($keys as $key) {
                        $query->orWhere('name', 'LIKE', '%' . $key . '%');
                    }
                }
            })
            ->when($status != 'all', function ($query) use ($status) {
                $query->where('is_active', $status == 'active' ? 1 : 0);
            })
            ->latest()->paginate(pagination_limit())->appends($queryParams);

        return view('productmodule::admin.list', compact('products', 'search', 'status'));
    }

    public function create(): View|Factory|Application
    {
        $categories = $this->category->ofStatus(1)->ofType('main')->latest()->get();
        return view('productmodule::admin.create', compact('categories'));
    }

    public function store(Request $request): RedirectResponse
    {
        $request->validate([
            'name' => 'required|max:191',
            'name.0' => 'required|max:191',
            'description' => 'required',
            'description.0' => 'required',
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif|max:10240',
            'price' => 'required|numeric',
            'cost' => 'required|numeric',  // Validate the cost field
            'quantity' => 'required|integer',
        ]);

        DB::transaction(function () use ($request) {
            $product = new Product();
            $product->name = $request->name[array_search('default', $request->lang)];
            $product->description = $request->description[array_search('default', $request->lang)];
            $product->category_id = $request->category_id;
            $product->sub_category_id = $request->sub_category_id;
            $product->price = $request->price;
            $product->cost = $request->cost;  // Store the cost field
            $product->quantity = $request->quantity;
            $product->image = file_uploader('products/', 'png', $request->file('image'));
            $product->save();

            $defaultLang = str_replace('_', '-', app()->getLocale());

            foreach ($request->lang as $index => $key) {
                if ($defaultLang == $key && !($request->name[$index])) {
                    if ($key != 'default') {
                        Translation::updateOrInsert(
                            [
                                'translationable_type' => 'Modules\ProductModule\Entities\Product',
                                'translationable_id' => $product->id,
                                'locale' => $key,
                                'key' => 'name'],
                            ['value' => $product->name]
                        );
                    }
                } else {
    
                    if ($request->name[$index] && $key != 'default') {
                        Translation::updateOrInsert(
                            [
                                'translationable_type' => 'Modules\ProductModule\Entities\Product',
                                'translationable_id' => $product->id,
                                'locale' => $key,
                                'key' => 'name'],
                            ['value' => $request->name[$index]]
                        );
                    }
                }
    
                if ($defaultLang == $key && !($request->description[$index])) {
                    if ($key != 'default') {
                        Translation::updateOrInsert(
                            [
                                'translationable_type' => 'Modules\ProductModule\Entities\Product',
                                'translationable_id' => $product->id,
                                'locale' => $key,
                                'key' => 'description'],
                            ['value' => $product->description]
                        );
                    }
                } else {
    
                    if ($request->description[$index] && $key != 'default') {
                        Translation::updateOrInsert(
                            [
                                'translationable_type' => 'Modules\ProductModule\Entities\Product',
                                'translationable_id' => $product->id,
                                'locale' => $key,
                                'key' => 'description'],
                            ['value' => $request->description[$index]]
                        );
                    }
                }
            }
        });

        Toastr::success(translate(SERVICE_STORE_200['message']));
        return back();
    }

    public function edit(string $id): View|Factory|Application|RedirectResponse
    {
        // $product = $this->product->find($id);
        $product = $this->product->withoutGlobalScope('translate')->where('id', $id)->first();
        if (!$product) {
            Toastr::error('Product not found');
            return back();
        }
        $categories = $this->category->ofStatus(1)->ofType('main')->latest()->get();
        return view('productmodule::admin.edit', compact('product', 'categories'));
    }

    public function update(Request $request, string $id): JsonResponse|RedirectResponse
    {
        $request->validate([
            'name' => 'required|max:191',
            'name.0' => 'required|max:191',
            'description' => 'required',
            'description.0' => 'required',
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif|max:10240',
            'price' => 'required|numeric',
            'cost' => 'required|numeric',  // Validate the cost field
            'quantity' => 'required|integer',
        ]);

        $product = $this->product->find($id);
        if (!isset($product)) {
            return response()->json(response_formatter(DEFAULT_204), 200);
        }
        $product->name = $request->name[array_search('default', $request->lang)];
        $product->category_id = $request->category_id;
        $product->sub_category_id = $request->sub_category_id;
        $product->description = $request->description[array_search('default', $request->lang)];
        $product->price = $request->price;
        $product->cost = $request->cost;  // Update the cost field
        $product->quantity = $request->quantity;

        if ($request->has('image')) {
            $product->image = file_uploader('products/', 'png', $request->file('image'));
        }

        $product->save();

        $defaultLang = str_replace('_', '-', app()->getLocale());

        foreach ($request->lang as $index => $key) {
            if ($defaultLang == $key && !($request->name[$index])) {
                if ($key != 'default') {
                    Translation::updateOrInsert(
                        [
                            'translationable_type' => 'Modules\ProductModule\Entities\Product',
                            'translationable_id' => $product->id,
                            'locale' => $key,
                            'key' => 'name'],
                        ['value' => $product->name]
                    );
                }
            } else {

                if ($request->name[$index] && $key != 'default') {
                    Translation::updateOrInsert(
                        [
                            'translationable_type' => 'Modules\ProductModule\Entities\Product',
                            'translationable_id' => $product->id,
                            'locale' => $key,
                            'key' => 'name'],
                        ['value' => $request->name[$index]]
                    );
                }
            }

            if ($defaultLang == $key && !($request->description[$index])) {
                if ($key != 'default') {
                    Translation::updateOrInsert(
                        [
                            'translationable_type' => 'Modules\ProductModule\Entities\Product',
                            'translationable_id' => $product->id,
                            'locale' => $key,
                            'key' => 'description'],
                        ['value' => $product->description]
                    );
                }
            } else {

                if ($request->description[$index] && $key != 'default') {
                    Translation::updateOrInsert(
                        [
                            'translationable_type' => 'Modules\ProductModule\Entities\Product',
                            'translationable_id' => $product->id,
                            'locale' => $key,
                            'key' => 'description'],
                        ['value' => $request->description[$index]]
                    );
                }
            }
        }

        Toastr::success('Product updated successfully');
        return redirect()->route('admin.product.index');
    }

    public function destroy(Request $request, $id): RedirectResponse
    {
        $product = $this->product->find($id);
        if ($product) {
            file_remover('products/', $product->image);
            $product->delete();

            Toastr::success('Product deleted successfully');
            return back();
        }

        Toastr::error('Product not found');
        return back();
    }

    public function statusUpdate(Request $request, $id): JsonResponse
    {
        $product = $this->product->find($id);
        $product->is_active = !$product->is_active;
        $product->save();

        return response()->json(response_formatter(DEFAULT_STATUS_UPDATE_200), 200);
    }

    public function download(Request $request): string|StreamedResponse
    {
        $products = $this->product
            ->when($request->has('search'), function ($query) use ($request) {
                $keys = explode(' ', $request['search']);
                if (is_array($keys)) {
                    foreach ($keys as $key) {
                        $query->orWhere('name', 'LIKE', '%' . $key . '%');
                    }
                }
            })
            ->latest()->get();

        return (new FastExcel($products))->download(time() . '-products.xlsx');
    }
}