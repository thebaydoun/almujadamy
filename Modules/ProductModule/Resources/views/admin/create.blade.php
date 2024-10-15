@extends('adminmodule::layouts.master')

@section('title',translate('Product Add'))

@push('css_or_js')
<script src="{{asset('public/assets/admin-module')}}/js//tags-input.min.js"></script>
<script src="{{asset('public/assets/admin-module')}}/plugins/select2/select2.min.js"></script>
<script src="{{asset('public/assets/admin-module')}}/plugins/jquery-steps/jquery.steps.min.js"></script>
<script src="{{asset('public/assets/provider-module')}}/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="{{asset('public/assets/admin-module/plugins/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('public/assets/ckeditor/jquery.js')}}"></script>
@endpush

@section('content')
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="page-title-wrap mb-3">
                        <h2 class="page-title">{{translate('add_new_product')}}</h2>
                    </div>

                    <div class="card category-setup mb-30">
                        <div class="card-body p-30">
                            <form action="{{route('admin.product.store')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                @php($language= Modules\BusinessSettingsModule\Entities\BusinessSettings::where('key_name','system_language')->first())
                                @php($default_lang = str_replace('_', '-', app()->getLocale()))
                                @if($language)
                                    <ul class="nav nav--tabs border-color-primary mb-4">
                                        <li class="nav-item">
                                            <a class="nav-link lang_link active"
                                               href="#"
                                               id="default-link">{{translate('default')}}</a>
                                        </li>
                                        @foreach ($language?->live_values as $lang)
                                            <li class="nav-item">
                                                <a class="nav-link lang_link"
                                                   href="#"
                                                   id="{{ $lang['code'] }}-link">{{ get_language_name($lang['code']) }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                @endif
                                <div class="row">
                                    <div class="col-lg-12 mb-5 mb-lg-0">
                                        <div class="d-flex flex-column">
                                            @if ($language)
                                                <div class="form-floating form-floating__icon mb-30 lang-form" id="default-form">
                                                    <input type="text" name="name[]" class="form-control" required
                                                           placeholder="{{translate('product_name')}}">
                                                    <label>{{translate('product_name')}} ({{ translate('default') }})</label>
                                                    <span class="material-icons">subtitles</span>
                                                </div>
                                                <input type="hidden" name="lang[]" value="default">
                                                @foreach ($language?->live_values as $lang)
                                                    <div class="form-floating form-floating__icon mb-30 d-none lang-form" id="{{$lang['code']}}-form">
                                                        <input type="text" name="name[]" class="form-control"
                                                               placeholder="{{translate('product_name')}}">
                                                        <label>{{translate('product_name')}} ({{strtoupper($lang['code'])}})</label>
                                                        <span class="material-icons">subtitles</span>
                                                    </div>
                                                    <input type="hidden" name="lang[]" value="{{$lang['code']}}">
                                                @endforeach
                                            @else
                                                <div class="form-floating form-floating__icon mb-30">
                                                    <input type="text" name="name[]" class="form-control"
                                                           placeholder="{{translate('product_name')}}" required>
                                                    <label>{{translate('product_name')}}</label>
                                                    <span class="material-icons">subtitles</span>
                                                </div>
                                                <input type="hidden" name="lang[]" value="default">
                                            @endif
                                        </div>
                                        @if($language)
                                        <div class="lang-form2" id="default-form2">
                                            <div class="col-12 mb-4 mt-md-4 mb-md-4">
                                                <div class="form-error-wrap">
                                                    <label for="editor"
                                                        class="mb-2">{{translate('description')}} ({{translate('default')}})
                                                        <span class="text-danger">*</span></label>
                                                    <section id="editor" class="dark-support">
                                                    <textarea class="form-control" name="description[]" required></textarea>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                        @foreach ($language?->live_values as $lang)
                                            <div class="d-none lang-form2" id="{{$lang['code']}}-form2">
                                                <div class="col-12 mb-4 mt-md-4 mb-md-4">
                                                    <div class="form-error-wrap">
                                                        <label for="editor" class="mb-2">{{translate('description')}} ({{strtoupper($lang['code'])}})
                                                            <span class="text-danger">*</span>
                                                        </label>
                                                        <section id="editor" class="dark-support">
                                                        <textarea class="form-control" name="description[]"></textarea>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                        @else
                                            <div class="normal-form">
                                                <div class="col-12 mb-4 mt-md-4 mb-md-4">
                                                    <div class="form-error-wrap">
                                                        <label for="editor" class="mb-2">{{translate('description')}}
                                                            <span class="text-danger">*</span>
                                                        </label>
                                                        <section id="editor" class="dark-support">
                                                            <textarea class="form-control" name="description[]" required></textarea>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
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
                                    <div class="col-md-12">
                                        <div class="form-floating form-floating__icon mb-30">
                                            <input type="number" class="form-control" name="quantity"
                                                    placeholder="{{translate('Quantity')}}"
                                                    value="{{old('quantity')}}" required>
                                            <label>{{translate('Quantity')}}</label>
                                            <span class="material-icons">format_list_numbered</span>
                                        </div>
                                    </div>
                                    <div class="mb-30">
                                        <div class="form-error-wrap">
                                            <select class="js-select theme-input-style w-100 form-error-wrap" name="category_id" id="category-id">
                                                <option selected value="0"
                                                        disabled>{{translate('choose_Category')}} *
                                                </option>
                                                @foreach($categories as $category)
                                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-30 form-error-wrap" id="sub-category-selector">
                                        <div class="form-error-wrap">
                                            <select class="subcategory-select theme-input-style w-100"
                                                    name="sub_category_id" id="sub-category-id">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="d-flex  gap-3 gap-xl-5">
                                            <p class="opacity-75 max-w220">{{translate('image_format_-_jpg,_png,_jpeg,_gif_image
                                                size_-_
                                                maximum_size_2_MB_Image_Ratio_-_1:1')}}</p>
                                            <div class="d-flex align-items-center flex-column">
                                                <div class="upload-file">
                                                    <input type="file" class="upload-file__input" name="image" accept=".{{ implode(',.', array_column(IMAGEEXTENSION, 'key')) }}, |image/*">
                                                    <div class="upload-file__img">
                                                        <img
                                                            src="{{asset('public/assets/admin-module/img/media/upload-file.png')}}"
                                                            alt="{{translate('image')}}">
                                                    </div>
                                                    <span class="upload-file__edit">
                                                        <span class="material-icons">edit</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="d-flex justify-content-end gap-20 mt-30">
                                            <button class="btn btn--secondary"
                                                    type="reset">{{translate('reset')}}</button>
                                            <button class="btn btn--primary" type="submit">{{translate('submit')}}
                                            </button>
                                        </div>
                                    </div>
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
    <script src="{{asset('public/assets/admin-module')}}/plugins/select2/select2.min.js"></script>
    <script src="{{asset('public/assets/category-module')}}/js/category/create.js"></script>
    <script src="{{asset('public/assets/admin-module')}}/plugins/dataTables/jquery.dataTables.min.js"></script>
    <script src="{{asset('public/assets/admin-module')}}/plugins/dataTables/dataTables.select.min.js"></script>
    <script src="{{asset('public/assets/ckeditor/jquery.js')}}"></script>

    <script>
        "use strict"

        $(document).ready(function () {
            $('.js-select').select2();
            $('.subcategory-select').select2({
                placeholder: "Choose Subcategory"
            });
        });

        $("#category-id").change(function (){
            let id = this.value;
            let route = "{{ url('/admin/category/ajax-childes/') }}/" + id;
            ajax_switch_category(route)
        });

        function ajax_switch_category(route) {
            $.get({
                url: route,
                dataType: 'json',
                data: {},
                beforeSend: function () {
                },
                success: function (response) {
                    $('#sub-category-selector').html(response.template);
                },
                complete: function () {
                },
            });
        }

        $(".lang_link").on('click', function (e) {
            e.preventDefault();
            $(".lang_link").removeClass('active');
            $(".lang-form").addClass('d-none');
            $(".lang-form2").addClass('d-none');
            $(this).addClass('active');

            let form_id = this.id;
            let lang = form_id.substring(0, form_id.length - 5);
            $("#" + lang + "-form").removeClass('d-none');
            $("#" + lang + "-form2").removeClass('d-none');

        });
    </script>

@endpush
