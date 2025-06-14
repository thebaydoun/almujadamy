@extends('adminmodule::layouts.master')

@section('title',translate('provider_update'))

@push('css_or_js')
    <script src="{{asset('public/assets/admin-module/js/intlTelInput.js')}}"></script>
    <link rel="stylesheet" href="{{asset('public/assets/admin-module/css/intlTelInput.css')}}/">
@endpush

@section('content')
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="page-title-wrap mb-3">
                        <h2 class="page-title">{{translate('Update_Provider')}}</h2>
                    </div>
                    <div class="pb-4">
                        <form action="{{route('admin.provider.update', [$provider->id])}}" method="POST"
                              enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h4 class="c1 mb-20">{{translate('General_Information')}}</h4>
                                            <div class="form-floating form-floating__icon mb-30">
                                                <input type="text" class="form-control"
                                                       value="{{$provider->company_name}}"
                                                       name="company_name" required
                                                       placeholder="{{translate('Company_/_Individual_Name')}}">
                                                <label>{{translate('Company_/_Individual_Name')}}</label>
                                                <span class="material-icons">store</span>
                                            </div>
                                            <div class="form-floating mb-30">
                                                <label for="account_phone">
                                                    {{translate('Phone')}}
                                                </label>
                                                <input type="tel" class="form-control" id="company_phone"
                                                       name="account_phone" value="{{$provider->owner->phone}}"
                                                       placeholder="{{translate('Phone')}}" required>
                                            </div>
                                            <div class="form-floating form-floating__icon mb-30">
                                                <input type="email" class="form-control"
                                                       name="account_email" value="{{$provider->owner->email}}"
                                                       placeholder="{{translate('Email')}}" required>
                                                <label>{{translate('Email')}}</label>
                                                <span class="material-icons">mail</span>
                                            </div>
                                            <div class="form-floating mb-30 d-none">
                                                <select class="select-identity theme-input-style w-100" name="zone_id"
                                                        required>
                                                    <option disabled selected>{{translate('Select_Zone')}}</option>
                                                    @foreach($zones as $zone)
                                                        <option value="{{$zone->id}}"
                                                            {{$provider->zone_id == $zone->id ? 'selected': ''}}>
                                                            {{$zone->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-floating mb-30 d-none">
                                                <textarea class="form-control resize-none" placeholder="{{translate('Address')}}"
                                                          name="company_address"
                                                          >{{$provider->company_address}}</textarea>
                                                <label>{{translate('Address')}}</label>
                                            </div>
                                            
                                            
                                            <div class="row gx-2">
                                                <div class="col-lg-6">
                                                    <div class="form-floating form-floating__icon mb-30">
                                                        <input type="password" class="form-control" name="password"
                                                               placeholder="{{translate('Password')}}">
                                                        <label>{{translate('Password')}}</label>
                                                        <span class="material-icons togglePassword">visibility_off</span>
                                                        <span class="material-icons">lock</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-floating form-floating__icon mb-30">
                                                        <input type="password" class="form-control"
                                                               name="confirm_password"
                                                               placeholder="{{translate('Confirm_Password')}}">
                                                        <label>{{translate('Confirm_Password')}}</label>
                                                        <span class="material-icons togglePassword">visibility_off</span>
                                                        <span class="material-icons">lock</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="form-floating mb-30">
                                                    {{-- <label for="permissions">{{translate('Select_Permissions')}}</label> --}}
                                                    <select class="select-identity theme-input-style w-100" name="permissions[]" id="permissions" multiple="multiple" required>
                                                        <optgroup label="{{translate('Booking Management')}}">
                                                            <option value="requests">{{translate('Requests')}}</option>
                                                        </optgroup>
                                                        <optgroup label="{{translate('Service Management')}}">
                                                            <option value="categories">{{translate('Categories')}}</option>
                                                            <option value="services">{{translate('Services')}}</option>
                                                        </optgroup>
                                                        <optgroup label="{{translate('Driver Management')}}">
                                                            <option value="driver_list">{{translate('Driver List')}}</option>
                                                        </optgroup>
                                                        <optgroup label="{{translate('Transaction Management')}}">
                                                            <option value="transactions">{{translate('All Transactions')}}</option>
                                                        </optgroup>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="d-flex flex-column align-items-center gap-3">
                                                <h3 class="mb-0">{{translate('Company_Logo')}}</h3>
                                                <div>
                                                    <div class="upload-file">
                                                        <input type="file" class="upload-file__input" name="logo">
                                                        <div class="upload-file__img">
                                                            <img
                                                                src="{{onErrorImage($provider->logo,
                                                                asset('storage/app/public/provider/logo').'/' . $provider->logo,
                                                                asset('public/assets/admin-module/img/media/upload-file.png') ,
                                                                'provider/logo/')}}" alt="{{translate('image')}}">
                                                        </div>
                                                        <span class="upload-file__edit">
                                                            <span class="material-icons">edit</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <p class="opacity-75 max-w220 mx-auto">{{translate('Image format - jpg, png,
                                                    jpeg,
                                                    gif Image
                                                    Size -
                                                    maximum size 2 MB Image Ratio - 1:1')}}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- <div class="row gx-2 mt-2">
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h4 class="c1 mb-20">{{translate('Business Information')}}</h4>
                                            <div class="mb-30">
                                                <select class="select-identity theme-input-style w-100"
                                                        name="identity_type" required>
                                                    <option selected
                                                            disabled>{{translate('Select_Identity_Type')}}</option>
                                                    <option value="passport"
                                                        {{$provider->owner->identification_type == 'passport' ? 'selected': ''}}>
                                                        {{translate('Passport')}}</option>
                                                    <option value="driving_license"
                                                        {{$provider->owner->identification_type == 'driving_license' ? 'selected': ''}}>
                                                        {{translate('Driving_License')}}</option>
                                                    <option value="nid"
                                                        {{$provider->owner->identification_type == 'nid' ? 'selected': ''}}>
                                                        {{translate('nid')}}</option>
                                                    <option value="trade_license"
                                                        {{$provider->owner->identification_type == 'trade_license' ? 'selected': ''}}>
                                                        {{translate('Trade_License')}}</option>
                                                </select>
                                            </div>
                                            <div class="form-floating form-floating__icon mb-30">
                                                <input type="text" class="form-control" name="identity_number"
                                                       value="{{$provider->owner->identification_number}}"
                                                       placeholder="{{translate('Identity_Number')}}" required>
                                                <label>{{translate('Identity_Number')}}</label>
                                                <span class="material-icons">badge</span>
                                            </div>

                                            <div class="upload-file w-100">
                                                <h3 class="mb-3">{{translate('Identification_Image')}}</h3>
                                                <div id="multi_image_picker">
                                                    @foreach($provider->owner->identification_image as $img)
                                                        <img class="p-1" height="150"
                                                             src="{{onErrorImage($img,
                                                            asset('storage/app/public/provider/identity').'/' . $img,
                                                            asset('public/assets/admin-module/img/media/provider-id.png') ,
                                                            'provider/identity/')}}" alt="{{translate('image')}}">
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <div class="d-flex flex-wrap justify-content-between gap-3 mb-20">
                                                <h4 class="c1">{{translate('Contact_Person')}}</h4>
                                            </div>
                                            <div class="form-floating form-floating__icon mb-30">
                                                <input type="text" class="form-control" name="contact_person_name"
                                                       value="{{$provider->contact_person_name}}" placeholder="name"
                                                       required>
                                                <label>{{translate('Name')}}</label>
                                                <span class="material-icons">account_circle</span>
                                            </div>
                                            <div class="row gx-2">
                                                <div class="col-lg-6">
                                                    <div class="form-floating mb-30">
                                                        <label for="contact_person_phone">{{translate('Phone')}}</label>
                                                        <input type="tel" class="form-control"
                                                               name="contact_person_phone"
                                                               id="contact_person_phone"
                                                               value="{{$provider->contact_person_phone}}"
                                                               placeholder="{{translate('Phone')}}"
                                                               required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-floating form-floating__icon mb-30">
                                                        <input type="email" class="form-control"
                                                               name="contact_person_email"
                                                               value="{{$provider->contact_person_email}}"
                                                               placeholder="{{translate('Email')}}"
                                                               required>
                                                        <label>{{translate('Email')}}</label>
                                                        <span class="material-icons">mail</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <h4 class="c1 mb-20">{{translate('Account_Information')}}</h4>
                                            <div class="form-floating form-floating__icon mb-30">
                                                <input type="email" class="form-control"
                                                       name="company_email" value="{{$provider->owner->email}}" readonly
                                                       placeholder="{{translate('Email')}}" required>
                                                <label>{{translate('Email')}}</label>
                                                <span class="material-icons">mail</span>
                                            </div>
                                            <div class="form-floating mb-30">
                                                <label for="account_phone">{{translate('Phone')}}</label>
                                                <input type="tel" class="form-control" name="account_phone"
                                                       value="{{$provider->owner->phone}}"
                                                       id="account_phone"
                                                       placeholder="{{translate('Phone')}}"
                                                       required readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 mt-4">
                                <div class="card h-100">
                                    <div class="card-body">
                                        <div class="d-flex flex-wrap justify-content-between gap-3 mb-20">
                                            <h4 class="c1">{{translate('Select Address from Map')}}</h4>
                                        </div>
                                        <div class="row gx-2">
                                            <div class="col-md-6 col-12">
                                                <div class="mb-30">
                                                    <div class="form-floating form-floating__icon">
                                                        <input type="text" class="form-control" name="latitude"
                                                               id="latitude"
                                                               placeholder="{{translate('latitude')}} *"
                                                               value="{{$provider->coordinates['latitude'] ?? null}}"
                                                               required readonly
                                                               data-bs-toggle="tooltip" data-bs-placement="top"
                                                               title="{{translate('Select from map')}}">
                                                        <label>{{translate('latitude')}} *</label>
                                                        <span class="material-icons">location_on</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-12">
                                                <div class="mb-30">
                                                    <div class="form-floating form-floating__icon">
                                                        <input type="text" class="form-control" name="longitude"
                                                               id="longitude"
                                                               placeholder="{{translate('longitude')}} *"
                                                               value="{{$provider->coordinates['longitude'] ?? null}}"
                                                               required readonly
                                                               data-bs-toggle="tooltip" data-bs-placement="top"
                                                               title="{{translate('Select from map')}}">
                                                        <label>{{translate('longitude')}} *</label>
                                                        <span class="material-icons">location_on</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div id="location_map_div" class="location_map_class">
                                                    <input id="pac-input" class="form-control w-auto"
                                                           data-toggle="tooltip"
                                                           data-placement="right"
                                                           data-original-title="{{ translate('search_your_location_here') }}"
                                                           type="text" placeholder="{{ translate('search_here') }}"/>
                                                    <div id="location_map_canvas"
                                                         class="overflow-hidden rounded canvas_class"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> --}}

                            <div class="d-flex gap-4 flex-wrap justify-content-end mt-4">
                                <button type="reset" class="btn btn--secondary">{{translate('Reset')}}</button>
                                <button type="submit" class="btn btn--primary">{{translate('Submit')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')

    <script src="{{asset('public/assets/provider-module')}}/js//tags-input.min.js"></script>
    <script src="{{asset('public/assets/provider-module')}}/js/spartan-multi-image-picker.js"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key={{business_config('google_map', 'third_party')?->live_values['map_api_key_client']}}&libraries=places&v=3.45.8"></script>

    <script>
        let flag = "{{business_config('country_code', 'business_information')->live_values ?? 'bd'}}"
        const company_phone = window.intlTelInput(document.querySelector("#company_phone"), {
            utilsScript: "{{asset('public/assets/admin-module/js/utils.js')}}",
            autoHideDialCode: false,
            autoPlaceholder: "ON",
            dropdownContainer: document.body,
            formatOnDisplay: true,
            hiddenInput: "company_phone",
            placeholderNumberType: "MOBILE",
            separateDialCode: true,
            initialCountry: flag,
        });
        $(document).ready(function() {
            // Initialize Select2 for permissions
            $('#permissions').select2({
                placeholder: "{{translate('Select_Permissions')}}",  // Placeholder text
                allowClear: true,  // Allows user to clear selection
                multiple: true,  // Allows multiple selections
                width: '100%'  // Ensures the dropdown fits within its container
            });
        });

        const contact_person_phone = window.intlTelInput(document.querySelector("#contact_person_phone"), {
            utilsScript: "{{asset('public/assets/admin-module/js/utils.js')}}",
            autoHideDialCode: false,
            autoPlaceholder: "ON",
            dropdownContainer: document.body,
            formatOnDisplay: true,
            hiddenInput: "contact_person_phone",
            placeholderNumberType: "MOBILE",
            separateDialCode: true,
            initialCountry: flag,
        });

        const account_phone = window.intlTelInput(document.querySelector("#account_phone"), {
            utilsScript: "{{asset('public/assets/admin-module/js/utils.js')}}",
            autoHideDialCode: false,
            autoPlaceholder: "ON",
            dropdownContainer: document.body,
            formatOnDisplay: true,
            hiddenInput: "account_phone",
            placeholderNumberType: "MOBILE",
            separateDialCode: true,
            initialCountry: flag,
        });
    </script>

    <script>
        "use strict";

        $("#multi_image_picker").spartanMultiImagePicker({
            fieldName: 'identity_images[]',
            maxCount: 2,
            rowHeight: 'auto',
            groupClassName: 'item',
            dropFileLabel: "{{translate('Drop_here')}}",
            placeholderImage: {
                image: '{{asset('public/assets/admin-module')}}/img/media/banner-upload-file.png',
                width: '100%',
            },

            onRenderedPreview: function (index) {
                toastr.success('{{translate('Image_added')}}', {
                    CloseButton: true,
                    ProgressBar: true
                });
            },
            onRemoveRow: function (index) {
                console.log(index);
            },
            onExtensionErr: function (index, file) {
                toastr.error('{{translate('Please_only_input_png_or_jpg_type_file')}}', {
                    CloseButton: true,
                    ProgressBar: true
                });
            },
            onSizeErr: function (index, file) {
                toastr.error('{{translate('File_size_too_big')}}', {
                    CloseButton: true,
                    ProgressBar: true
                });
            }

        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#viewer').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#customFileEg1").change(function () {
            readURL(this);
        });


        $(document).ready(function () {
            function initAutocomplete() {
                var myLatLng = {

                    lat: 23.811842872190343,
                    lng: 90.356331
                };
                const map = new google.maps.Map(document.getElementById("location_map_canvas"), {
                    center: {
                        lat: 23.811842872190343,
                        lng: 90.356331
                    },
                    zoom: 13,
                    mapTypeId: "roadmap",
                });

                var marker = new google.maps.Marker({
                    position: myLatLng,
                    map: map,
                });

                marker.setMap(map);
                var geocoder = geocoder = new google.maps.Geocoder();
                google.maps.event.addListener(map, 'click', function (mapsMouseEvent) {
                    var coordinates = JSON.stringify(mapsMouseEvent.latLng.toJSON(), null, 2);
                    var coordinates = JSON.parse(coordinates);
                    var latlng = new google.maps.LatLng(coordinates['lat'], coordinates['lng']);
                    marker.setPosition(latlng);
                    map.panTo(latlng);

                    document.getElementById('latitude').value = coordinates['lat'];
                    document.getElementById('longitude').value = coordinates['lng'];


                    geocoder.geocode({
                        'latLng': latlng
                    }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            if (results[1]) {
                                document.getElementById('address').innerHtml = results[1].formatted_address;
                            }
                        }
                    });
                });
                const input = document.getElementById("pac-input");
                const searchBox = new google.maps.places.SearchBox(input);
                map.controls[google.maps.ControlPosition.TOP_CENTER].push(input);
                map.addListener("bounds_changed", () => {
                    searchBox.setBounds(map.getBounds());
                });
                let markers = [];
                searchBox.addListener("places_changed", () => {
                    const places = searchBox.getPlaces();

                    if (places.length == 0) {
                        return;
                    }
                    markers.forEach((marker) => {
                        marker.setMap(null);
                    });
                    markers = [];
                    const bounds = new google.maps.LatLngBounds();
                    places.forEach((place) => {
                        if (!place.geometry || !place.geometry.location) {
                            console.log("Returned place contains no geometry");
                            return;
                        }
                        var mrkr = new google.maps.Marker({
                            map,
                            title: place.name,
                            position: place.geometry.location,
                        });
                        google.maps.event.addListener(mrkr, "click", function (event) {
                            document.getElementById('latitude').value = this.position.lat();
                            document.getElementById('longitude').value = this.position.lng();
                        });

                        markers.push(mrkr);

                        if (place.geometry.viewport) {
                            // Only geocodes have viewport.
                            bounds.union(place.geometry.viewport);
                        } else {
                            bounds.extend(place.geometry.location);
                        }
                    });
                    map.fitBounds(bounds);
                });
            };
            initAutocomplete();
        });


        $('.__right-eye').on('click', function () {
            if ($(this).hasClass('active')) {
                $(this).removeClass('active')
                $(this).find('i').removeClass('tio-invisible')
                $(this).find('i').addClass('tio-hidden-outlined')
                $(this).siblings('input').attr('type', 'password')
            } else {
                $(this).addClass('active')
                $(this).siblings('input').attr('type', 'text')


                $(this).find('i').addClass('tio-invisible')
                $(this).find('i').removeClass('tio-hidden-outlined')
            }
        })
    </script>

@endpush
