<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{translate('admin_login')}}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link rel="shortcut icon"
          href="{{asset('storage/app/public/business')}}/{{(business_config('business_favicon', 'business_information'))->live_values ?? null}}"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,400&display=swap"
        rel="stylesheet"/>

    <link href="{{asset('public/assets/admin-module')}}/css/material-icons.css" rel="stylesheet"/>
    <link rel="stylesheet" href="{{asset('public/assets/admin-module')}}/css/bootstrap.min.css"/>
    <link rel="stylesheet"
          href="{{asset('public/assets/admin-module')}}/plugins/perfect-scrollbar/perfect-scrollbar.min.css"/>

    <link rel="stylesheet" href="{{asset('public/assets/admin-module')}}/css/style.css"/>
    <link rel="stylesheet" href="{{asset('public/assets/admin-module')}}/css/toastr.css">
</head>

<body>
<div class="preloader"></div>
<?php
$logo = business_config('business_logo', 'business_information');
?>

<div class="login-form dark-support" data-bg-img="{{asset('public/assets/admin-module')}}/img/media/login-bg.png">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">
                <form action="{{route('admin.auth.login')}}" enctype="multipart/form-data" method="POST"
                      id="login-form">
                    @csrf
                    <div class="card my-5 ov-hidden">
                        <div class="login-wrap">
                            <div class="login-left">
                                <img class="login-img"
                                     src="{{asset('public/assets/admin-module')}}/img/media/login-img.png"
                                     alt="">
                            </div>
                            <div class="login-right-wrap">
                                <div class="d-flex justify-content-end mt-2 me-2">
                                    <span class="badge badge-success fz-12 opacity-75">
                                        {{-- {{translate('Software_Version')}} : {{ env('SOFTWARE_VERSION') }} --}}
                                    </span>
                                </div>
                                <div class="login-right">
                                    <div class="text-center mb-30">
                                        <img class="login-img login-logo mb-2"
                                             src="{{onErrorImage(
                                                        $logo->live_values,
                                                        asset('storage/app/public/business').'/' . $logo->live_values,
                                                        asset('public/assets/placeholder.png') ,
                                                        'business/')}}"
                                             alt="{{ translate('logo') }}">
                                        <h5 class="text-uppercase c1 mb-3">{{(business_config('business_name', 'business_information'))->live_values ?? null}}</h5>
                                        <h2 class="mb-1">{{translate('sign_in')}}</h2>
                                        <p class="opacity-75">{{translate('sign_in_to_stay_connected')}}</p>
                                    </div>

                                    <div class="mb-3">
                                        <div class="mb-30">
                                            <div class="form-floating">
                                                <input type="email" name="email_or_phone" class="form-control"
                                                       placeholder="{{translate('example@gmail.com')}}" required="" id="email">
                                                <label>{{translate('email')}}</label>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="form-floating">
                                                <input type="password" name="password" class="form-control"
                                                       placeholder="{{translate('********')}}" required=""
                                                       id="password">
                                                <label>{{translate('password')}}</label>
                                                <span class="material-icons togglePassword">visibility_off</span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                        </div>
                                    </div>

                                    @php($recaptcha = business_config('recaptcha', 'third_party'))
                                    @if(isset($recaptcha) && $recaptcha->is_active)
                                        <div class="recaptcha d-flex justify-content-center mb-4">
                                            <div id="recaptcha_element" class="w-100" data-type="image"></div>
                                        </div>
                                    @endif

                                    <div class="d-flex justify-content-center">
                                        <button class="btn btn--primary radius-50 text-uppercase"
                                                type="submit">{{translate('sign_in')}}</button>
                                    </div>

                                    {{-- <div class="mt-3 d-flex flex-wrap gap-1 justify-content-center">
                                        {{translate('want_to_sign_in_to_your_provider_account')}} ?
                                        <a href="{{route('provider.auth.login')}}"
                                           class="c2 text-capitalize">{{translate('sign_in_here')}}</a>
                                    </div> --}}
                                </div>

                                @if(env('APP_ENV')=='demo')
                                    <div class="login-footer d-flex justify-content-between c1-bg text-white">
                                        <div>
                                            <div>{{translate('email')}} : {{translate('admin@admin.com')}}</div>
                                            <div>{{translate('password')}} : {{translate('12345678')}}</div>
                                        </div>
                                        <button type="button" class="btn login-copy">
                                            <span class="material-symbols-outlined m-0">content_copy</span>
                                        </button>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="{{asset('public/assets/admin-module')}}/js/jquery-3.6.0.min.js"></script>
<script src="{{asset('public/assets/admin-module')}}/js/bootstrap.bundle.min.js"></script>
<script src="{{asset('public/assets/admin-module')}}/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="{{asset('public/assets/admin-module')}}/js/main.js"></script>

<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
<script src="{{asset('public/assets/admin-module')}}/js/sweet_alert.js"></script>
<script src="{{asset('public/assets/admin-module')}}/js/toastr.js"></script>
{!! Toastr::message() !!}

<script>
    "use strict";
    @if(env('APP_ENV')=='demo')
        $('.login-copy').on('click', function () {
            copy_cred()
        })

        function copy_cred() {
            $('#email').val('admin@admin.com');
            $('#password').val('12345678');
            toastr.success('{{translate('Copied successfully')}}', 'Success', {
                CloseButton: true,
                ProgressBar: true
            });
        }
   @endif

    @php($recaptcha = business_config('recaptcha', 'third_party'))
    @if(isset($recaptcha) && $recaptcha->is_active)

        var onloadCallback = function () {
                grecaptcha.render('recaptcha_element', {
                    'sitekey': '{{$recaptcha->live_values['site_key']}}'
                });
            };

            $("#login-form").on('submit', function (e) {
                var response = grecaptcha.getResponse();

                if (response.length === 0) {
                    e.preventDefault();
                    toastr.error("{{translate('please_check_the_recaptcha')}}");
                }
            });
    @endif

    @if ($errors->any())

        @foreach($errors->all() as $error)
        toastr.error('{{$error}}', Error, {
            CloseButton: true,
            ProgressBar: true
        });
        @endforeach

   @endif
</script>
</body>
</html>
