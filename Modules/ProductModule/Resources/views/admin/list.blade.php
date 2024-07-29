@extends('adminmodule::layouts.master')

@section('title', translate('Product List'))

@push('css_or_js')
    <link rel="stylesheet" href="{{asset('public/assets/admin-module/plugins/dataTables/jquery.dataTables.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('public/assets/admin-module/plugins/dataTables/select.dataTables.min.css')}}"/>
@endpush

@section('content')
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="page-title-wrap d-flex justify-content-between flex-wrap align-items-center gap-3 mb-3">
                        <h2 class="page-title">{{translate('Product List')}}</h2>
                        <div>
                            <a href="{{route('admin.product.create')}}" class="btn btn--primary">
                                <span class="material-icons">add</span>
                                {{translate('Add Product')}}
                            </a>
                        </div>
                    </div>

                    <div class="d-flex flex-wrap justify-content-between align-items-center border-bottom mx-lg-4 mb-10 gap-3">
                        <ul class="nav nav--tabs">
                            <li class="nav-item">
                                <a class="nav-link {{$status=='all'?'active':''}}" href="{{url()->current()}}?status=all">
                                    {{translate('all')}}
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{$status=='active'?'active':''}}" href="{{url()->current()}}?status=active">
                                    {{translate('active')}}
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{$status=='inactive'?'active':''}}" href="{{url()->current()}}?status=inactive">
                                    {{translate('inactive')}}
                                </a>
                            </li>
                        </ul>

                        <div class="d-flex gap-2 fw-medium">
                            <span class="opacity-75">{{translate('Total Products')}}:</span>
                            <span class="title-color">{{$products->total()}}</span>
                        </div>
                    </div>

                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="all-tab-pane">
                            <div class="card">
                                <div class="card-body">
                                    <div class="data-table-top d-flex flex-wrap gap-10 justify-content-between">
                                        <form action="{{url()->current()}}?status={{$status}}" class="search-form search-form_style-two" method="POST">
                                            @csrf
                                            <div class="input-group search-form__input_group">
                                                <span class="search-form__icon">
                                                    <span class="material-icons">search</span>
                                                </span>
                                                <input type="search" class="theme-input-style search-form__input"
                                                       value="{{$search}}" name="search"
                                                       placeholder="{{translate('search_here')}}">
                                            </div>
                                            <button type="submit" class="btn btn--primary">{{translate('search')}}</button>
                                        </form>

                                        <div class="d-flex flex-wrap align-items-center gap-3">
                                            <div class="dropdown">
                                                <button type="button" class="btn btn--secondary text-capitalize dropdown-toggle" data-bs-toggle="dropdown">
                                                    <span class="material-icons">file_download</span> download
                                                </button>
                                                <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                                                    <a class="dropdown-item" href="{{route('admin.product.download')}}?search={{$search}}">
                                                        {{translate('excel')}}
                                                    </a>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table id="example" class="table align-middle">
                                            <thead>
                                            <tr>
                                                <th>{{translate('Sl')}}</th>
                                                <th>{{translate('Product Name')}}</th>
                                                <th class="text-center">{{translate('Price')}}</th>
                                                <th class="text-center">{{translate('Quantity')}}</th>
                                                <th class="text-center">{{translate('Status')}}</th>
                                                <th class="text-center">{{translate('Action')}}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @forelse($products as $key => $product)
                                                <tr>
                                                    <td data-bs-target="#exampleModal--{{$product['id']}}"
                                                        data-bs-toggle="modal">{{$key + $products->firstItem()}}</td>
                                                    <td data-bs-target="#exampleModal--{{$product['id']}}"
                                                        data-bs-toggle="modal">
                                                        <span>{{$product->name}}</span>
                                                    </td>
                                                    <td class="text-center">{{$product->price}}</td>
                                                    <td class="text-center">{{$product->quantity}}</td>
                                                    <td>
                                                        <label class="switcher mx-auto" data-bs-toggle="modal"
                                                               data-bs-target="#deactivateAlertModal">
                                                            <input class="switcher_input"
                                                                   type="checkbox"
                                                                   {{$product->is_active ? 'checked' : ''}} data-status="{{$product->id}}">
                                                            <span class="switcher_control"></span>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex gap-2 justify-content-center">
                                                            <a href="{{route('admin.product.edit', [$product->id])}}"
                                                               class="action-btn btn--light-primary"
                                                               style="--size: 30px">
                                                                <span class="material-icons">edit</span>
                                                            </a>
                                                            <button type="button" data-delete="{{$product->id}}"
                                                                    class="action-btn btn--danger" style="--size: 30px">
                                                                <span class="material-symbols-outlined">delete</span>
                                                            </button>
                                                        </div>
                                                        <form action="{{route('admin.product.delete', [$product->id])}}" method="post" id="delete-{{$product->id}}" class="hidden">
                                                            @csrf
                                                            @method('DELETE')
                                                        </form>
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="6"><p class="text-center">{{translate('no_data_available')}}</p></td>
                                                </tr>
                                            @endforelse
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        {!! $products->links() !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('script')
    <script src="{{asset('public/assets/admin-module/js/custom.js')}}"></script>
    <script src="{{asset('public/assets/admin-module/plugins/dataTables/jquery.dataTables.min.js')}}"></script>
    <script>
        "use strict";

        $('.switcher_input').on('click', function () {
            let itemId = $(this).data('status');
            let route = '{{ route('admin.product.status-update', ['id' => ':itemId']) }}';
            route = route.replace(':itemId', itemId);
            route_alert(route, '{{ translate('want_to_update_status') }}');
        });

        $('.action-btn.btn--danger').on('click', function (event) {
            event.stopPropagation();
            let itemId = $(this).data('delete');
            form_alert('delete-' + itemId, '{{translate('want_to_delete_this')}}?');
        });
    </script>
@endpush
