@extends('adminmodule::layouts.master')

@section('title', translate('Product Add'))

@push('css_or_js')
    <link rel="stylesheet" href="{{asset('public/assets/admin-module/plugins/select2/select2.min.css')}}"/>
@endpush

@section('content')
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="page-title-wrap mb-3">
                        <h2 class="page-title">{{translate('add_new_product')}}</h2>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <form action="{{route('admin.product.store')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                @php($language = Modules\BusinessSettingsModule\Entities\BusinessSettings::where('key_name','system_language')->first())
                                @php($default_lang = str_replace('_', '-', app()->getLocale()))
                                @if($language)
                                    <ul class="nav nav--tabs border-color-primary mb-4">
                                        <li class="nav-item">
                                            <a class="nav-link lang_link active"
                                               href="#"
                                               id="default-link"
                                               data-lang="default">{{translate('default')}}</a>
                                        </li>
                                        @foreach ($language?->live_values as $lang)
                                            <li class="nav-item">
                                                <a class="nav-link lang_link"
                                                   href="#"
                                                   id="{{ $lang['code'] }}-link"
                                                   data-lang="{{ $lang['code'] }}">{{ get_language_name($lang['code']) }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                @endif
                                <div class="row">
                                    <h4 class="c1 mb-20">{{translate('general_information')}}</h4>
                                    <div class="col-md-6">
                                        <div class="form-floating form-floating__icon mb-30 lang_input" id="default-name">
                                            <input type="text" class="form-control" name="name[default]"
                                                   placeholder="{{translate('product_name')}}"
                                                   value="{{old('name.default')}}" required>
                                            <label>{{translate('product_name')}}</label>
                                            <span class="material-icons">account_circle</span>
                                        </div>
                                        @if($language)
                                            @foreach ($language?->live_values as $lang)
                                                <div class="form-floating form-floating__icon mb-30 d-none lang_input" id="name-{{ $lang['code'] }}">
                                                    <input type="text" class="form-control" name="name[{{ $lang['code'] }}]"
                                                           placeholder="{{translate('Product Name')}}"
                                                           value="{{old('name.'.$lang['code'])}}">
                                                    <label>{{translate('Product Name')}} ({{ get_language_name($lang['code']) }})</label>
                                                    <span class="material-icons">account_circle</span>
                                                </div>
                                            @endforeach
                                        @endif
                                    </div>
                                    <h4 class="c1 mb-20">{{translate('Description')}}</h4>
                                    <div class="col-md-12">
                                        <div class="form-floating mb-30 lang_input" id="default-description">
                                            <textarea class="form-control" id="description-default" name="description[default]"
                                                      placeholder="{{translate('Description')}}">{{old('description.default')}}</textarea>
                                        </div>
                                        @if($language)
                                            @foreach ($language?->live_values as $lang)
                                                <div class="form-floating mb-30 d-none lang_input" id="description-{{ $lang['code'] }}">
                                                    <textarea class="form-control" name="description[{{ $lang['code'] }}]"
                                                              placeholder="{{translate('Description')}}">{{old('description.'.$lang['code'])}}</textarea>
                                                </div>
                                            @endforeach
                                        @endif
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating form-floating__icon mb-30">
                                            <input type="number" class="form-control" name="price"
                                                   placeholder="{{translate('Price')}}"
                                                   value="{{old('price')}}" required>
                                            <label>{{translate('Price')}}</label>
                                            <span class="material-icons">attach_money</span>
                                        </div> 
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating form-floating__icon mb-30">
                                            <input type="number" class="form-control" name="cost"
                                                   placeholder="{{translate('cost')}}"
                                                   value="{{old('cost')}}" required>
                                            <label>{{translate('cost')}}</label>
                                            <span class="material-icons">attach_money</span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating form-floating__icon mb-30">
                                            <input type="number" class="form-control" name="quantity"
                                                   placeholder="{{translate('Quantity')}}"
                                                   value="{{old('quantity')}}" required>
                                            <label>{{translate('Quantity')}}</label>
                                            <span class="material-icons">format_list_numbered</span>
                                        </div>
                                    </div>
                                    <h4 class="c1 mb-20 mt-30">{{translate('product_image')}}</h4>
                                    <div class="col-12">
                                        <div class="d-flex flex-column align-items-center gap-3">
                                            <div class="d-flex flex-column align-items-center">
                                                <div class="upload-file">
                                                    <input type="file" class="upload-file__input" name="image" accept="image/*">
                                                    <div class="upload-file__img">
                                                        <img src="{{asset('public/assets/admin-module/img/media/upload-file.png')}}" alt="">
                                                    </div>
                                                    <span class="upload-file__edit">
                                                        <span class="material-icons">edit</span>
                                                    </span>
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
                                    <button type="submit" class="btn btn--primary">{{translate('Submit')}}</button>
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

<script>
    "use strict"

    $('#zone_selector__select').on('change', function() {
        var selectedValues = $(this).val();
        if (selectedValues !== null && selectedValues.includes('all')) {
            $(this).find('option').not(':disabled').prop('selected', 'selected');
            $(this).find('option[value="all"]').prop('selected', false);
        }
    });

    $('.status-update').on('click', function () {
        let itemId = $(this).data('status');
        let route = '{{route('admin.category.status-update',['id' => ':itemId'])}}';
        route = route.replace(':itemId', itemId);
        route_alert(route, '{{ translate('want_to_update_status') }}');
    })

    $('.feature-update').on('click', function () {
        let itemId = $(this).data('featured');
        let route = '{{route('admin.category.featured-update',['id' => ':itemId'])}}';
        route = route.replace(':itemId', itemId);
        route_alert(route, '{{ translate('want_to_update_status') }}');
    })

    $(document).on('click', '.lang_link', function(e) {
        e.preventDefault();
        $('.lang_link').removeClass('active');
        $(this).addClass('active');

        var lang = $(this).data('lang');
        $('.lang_input').addClass('d-none');
        $('#name-' + lang).removeClass('d-none');
        $('#description-' + lang).removeClass('d-none');
    });
</script>
@endpush
