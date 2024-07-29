@extends('adminmodule::layouts.master')

@section('title', translate('Product Edit'))

@push('css_or_js')
    <link rel="stylesheet" href="{{asset('public/assets/admin-module/plugins/select2/select2.min.css')}}"/>
@endpush

@section('content')
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="page-title-wrap mb-3">
                        <h2 class="page-title">{{translate('Edit Product')}}</h2>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <form action="{{route('admin.product.update', [$product->id])}}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="row">
                                    <h4 class="c1 mb-20">{{translate('General Information')}}</h4>
                                    <div class="col-md-6">
                                        <div class="form-floating form-floating__icon mb-30">
                                            <input type="text" class="form-control" name="name"
                                                   placeholder="{{translate('Product Name')}}"
                                                   value="{{$product->name}}" required>
                                            <label>{{translate('Product Name')}}</label>
                                            <span class="material-icons">account_circle</span>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-floating mb-30">
                                            <label for="description">{{translate('Description')}}</label>
                                            <textarea class="form-control" id="description" name="description"
                                                      placeholder="{{translate('Description')}}">{{$product->description}}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating form-floating__icon mb-30">
                                            <input type="number" class="form-control" name="price"
                                                   placeholder="{{translate('Price')}}"
                                                   value="{{$product->price}}" required>
                                            <label>{{translate('Price')}}</label>
                                            <span class="material-icons">attach_money</span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating form-floating__icon mb-30">
                                            <input type="number" class="form-control" name="quantity"
                                                   placeholder="{{translate('Quantity')}}"
                                                   value="{{$product->quantity}}" required>
                                            <label>{{translate('Quantity')}}</label>
                                            <span class="material-icons">format_list_numbered</span>
                                        </div>
                                    </div>

                                    <h4 class="c1 mb-20 mt-30">{{translate('Product Image')}}</h4>
                                    <div class="col-12">
                                        <div class="d-flex flex-column align-items-center gap-3">
                                            <div class="d-flex flex-column align-items-center">
                                                <div class="upload-file">
                                                    <input type="file" class="upload-file__input" name="image" accept="image/*">
                                                    <div class="upload-file__img">
                                                        <img class="onerror-image" src="{{asset('storage/products/'.$product->image)}}" alt="{{translate('Product Image')}}">
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="opacity-75 max-w220 mx-auto">
                                                {{translate('Image format - jpg, png, jpeg, gif Image Size - maximum size 2 MB Image Ratio - 1:1')}}
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-flex gap-4 flex-wrap justify-content-end">
                                    <button type="reset" class="btn btn--secondary">{{translate('Reset')}}</button>
                                    <button type="submit" class="btn btn--primary">{{translate('Update')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script src="{{asset('public/assets/admin-module/plugins/select2/select2.min.js')}}"></script>
@endpush
