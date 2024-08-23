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
use Illuminate\Support\Facades\DB;
use Modules\ProductModule\Entities\Product;
use Modules\BusinessSettingsModule\Entities\Translation;
use Rap2hpoutre\FastExcel\FastExcel;
use Symfony\Component\HttpFoundation\StreamedResponse;

class ProductController extends Controller
{
    private Product $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
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
        return view('productmodule::admin.create');
    }

    public function store(Request $request): RedirectResponse
    {
        $request->validate([
            'name.default' => 'required|unique:products,name',
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif|max:10240',
            'price' => 'required|numeric',
            'cost' => 'required|numeric',  // Validate the cost field
            'quantity' => 'required|integer',
        ]);

        DB::transaction(function () use ($request) {
            $product = new Product();
            $product->name = $request->name['default'];
            $product->description = $request->description['default'];
            $product->price = $request->price;
            $product->cost = $request->cost;  // Store the cost field
            $product->quantity = $request->quantity;

            if ($request->hasFile('image')) {
                $product->image = $request->file('image')->store('products', 'public');
            }

            $product->save();

            $defaultLanguage = str_replace('_', '-', app()->getLocale());
            $data = [];
            if (is_array($request->name)) {
                foreach ($request->name as $lang => $value) {
                    if ($lang != 'default') {
                        $data[] = array(
                            'translationable_type' => Product::class,
                            'translationable_id' => $product->id,
                            'locale' => $lang,
                            'key' => 'name',
                            'value' => $value,
                        );
                    }
                }
            }
            if (count($data)) {
                Translation::insert($data);
            }
        });

        Toastr::success('Product created successfully');
        return redirect()->route('admin.product.index');
    }

    public function edit(string $id): View|Factory|Application|RedirectResponse
    {
        $product = $this->product->find($id);
        if (!$product) {
            Toastr::error('Product not found');
            return back();
        }
        return view('productmodule::admin.edit', compact('product'));
    }

    public function update(Request $request, string $id): JsonResponse|RedirectResponse
    {
        $request->validate([
            'name.default' => 'required|unique:products,name,' . $id,
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif|max:10240',
            'price' => 'required|numeric',
            'cost' => 'required|numeric',  // Validate the cost field
            'quantity' => 'required|integer',
        ]);

        $product = Product::findOrFail($id);
        $product->name = $request->name['default'];
        $product->description = $request->description['default'];
        $product->price = $request->price;
        $product->cost = $request->cost;  // Update the cost field
        $product->quantity = $request->quantity;

        if ($request->hasFile('image')) {
            $product->image = $request->file('image')->store('products', 'public');
        }

        $product->save();

        $defaultLanguage = str_replace('_', '-', app()->getLocale());
        $data = [];
        if (is_array($request->name)) {
            foreach ($request->name as $lang => $value) {
                if ($lang != 'default') {
                    Translation::updateOrInsert(
                        [
                            'translationable_type' => Product::class,
                            'translationable_id' => $product->id,
                            'locale' => $lang,
                            'key' => 'name'
                        ],
                        ['value' => $value]
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
