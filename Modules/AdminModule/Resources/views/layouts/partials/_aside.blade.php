<?php
$booking = \Modules\BookingModule\Entities\Booking::get();
$max_booking_amount = (business_config('max_booking_amount', 'booking_setup'))->live_values ?? 0;
$pending_booking_count = \Modules\BookingModule\Entities\Booking::where('booking_status', 'pending')
    ->when($max_booking_amount > 0, function ($query) use ($max_booking_amount) {
        $query->where(function ($query) use ($max_booking_amount) {
            $query->where('payment_method', 'cash_after_service')
                ->where(function ($query) use ($max_booking_amount) {
                    $query->where('is_verified', 1)
                        ->orWhere('total_booking_amount', '<=', $max_booking_amount);
                })
                ->orWhere('payment_method', '<>', 'cash_after_service');
        });
    })
    ->count();

$offline_booking_count = \Modules\BookingModule\Entities\Booking::whereIn('booking_status', ['pending', 'accepted'])
    ->where('payment_method', 'offline_payment')->where('is_paid', 0)->count();

$accepted_booking_count = \Modules\BookingModule\Entities\Booking::where('booking_status', 'accepted')
    ->when($max_booking_amount > 0, function ($query) use ($max_booking_amount) {
        $query->where(function ($query) use ($max_booking_amount) {
            $query->where('payment_method', 'cash_after_service')
                ->where(function ($query) use ($max_booking_amount) {
                    $query->where('is_verified', 1)
                        ->orWhere('total_booking_amount', '<=', $max_booking_amount);
                })
                ->orWhere('payment_method', '<>', 'cash_after_service');
        });
    })
    ->count();

    $accepted_booking_count = \Modules\BookingModule\Entities\Booking::where('booking_status', 'accepted')
    ->when($max_booking_amount > 0, function ($query) use ($max_booking_amount) {
        $query->where(function ($query) use ($max_booking_amount) {
            $query->where('payment_method', 'cash_after_service')
                ->where(function ($query) use ($max_booking_amount) {
                    $query->where('is_verified', 1)
                        ->orWhere('total_booking_amount', '<=', $max_booking_amount);
                })
                ->orWhere('payment_method', '<>', 'cash_after_service');
        });
    })
    ->count();

$pending_providers = \Modules\ProviderManagement\Entities\Provider::ofApproval(2)->count();
$denied_providers = \Modules\ProviderManagement\Entities\Provider::ofApproval(0)->count();
$logo = business_config('business_logo', 'business_information');
?>

<aside class="aside">
    <div class="aside-header">
        <a href="{{route('admin.dashboard')}}" class="logo d-flex gap-2">
            <img class="main-logo onerror-image"
                 src="{{onErrorImage($logo->live_values??"", asset('storage/app/public/business').'/' . $logo->live_values??"",
                    asset('public/assets/placeholder.png') ,'business/')}}"
                 alt="{{ translate('image') }}">
        </a>

        <button class="toggle-menu-button aside-toggle border-0 bg-transparent p-0 dark-color">
            <span class="material-icons">menu</span>
        </button>
    </div>

    <div class="aside-body" data-trigger="scrollbar">
        <div class="user-profile media gap-3 align-items-center my-3">
            <div class="avatar">
                <img class="avatar-img rounded-circle"
                     src="{{onErrorImage(
                        auth()->user()->profile_image,
                        auth()->user()->user_type == 'admin-employee' ? asset('storage/app/public/employee/profile').'/' . auth()->user()->profile_image : asset('storage/app/public/user/profile_image').'/' . auth()->user()->profile_image,
                        asset('public/assets/provider-module/img/user2x.png') ,
                        auth()->user()->user_type == 'admin-employee' ? 'employee/profile/' :'user/profile_image/')}}"
                     alt="{{ translate('profile_image') }}">
            </div>
            <div class="media-body ">
                <h5 class="card-title">{{\Illuminate\Support\Str::limit(auth()->user()->email,15)}}</h5>
                <span class="card-text">{{auth()->user()->user_type}}</span>
            </div>
        </div>

        <div class="sidebar--search-form">
            <div class="search--form-group">
                <span class="material-symbols-outlined icon">search</span>
                <input type="text" class="js-form-search form-control" id="search-bar-input" placeholder="Search menu...">
            </div>
        </div>

        <ul class="nav">
            <li class="nav-category">{{translate('main')}}</li>
            <li>
                <a href="{{route('admin.dashboard')}}" class="{{request()->is('admin/dashboard')?'active-menu':''}}">
                    <span class="material-icons" title="{{translate('dashboard')}}">dashboard</span>
                    <span class="link-title">{{translate('dashboard')}}</span>
                </a>
            </li> 

            <!-- Booking Management Section -->
            @if(auth()->user()->user_type == 'super-admin' || (auth()->user()->user_type == 'provider-admin' && in_array('requests', $userPermissions)))
            <li class="nav-category booking-management" title="{{translate('booking_management')}}">
                {{translate('booking_management')}}
            </li>
             <li class="has-sub-item {{request()->is('admin/booking/*') ? 'sub-menu-opened' : ''}} booking-management">
            <a href="#" class="{{request()->is('admin/booking/*') ? 'active-menu' : ''}}">
            <span class="material-icons" title="Bookings">calendar_month</span>
            <span class="link-title">{{translate('bookings')}}</span>
        </a>
        <ul class="nav sub-menu">
            <li><a href="{{route('admin.booking.list', ['booking_status' => 'accepted'])}}"
                   class="{{request()->is('admin/booking/list') && request()->query('booking_status') == 'accepted' ? 'active-menu' : ''}}">
                   <span class="link-title">{{translate('Accepted')}} <span class="count">{{$accepted_booking_count}}</span></span></a>
            </li>
            <li><a href="{{route('admin.booking.list', ['booking_status' => 'pending'])}}"
                   class="{{request()->is('admin/booking/list') && request()->query('booking_status') == 'pending' ? 'active-menu' : ''}}">
                   <span class="link-title">{{translate('Pending')}} <span class="count">{{$pending_booking_count}}</span></span></a>
            </li>
            <li><a href="{{route('admin.booking.list', ['booking_status' => 'ongoing'])}}"
                   class="{{request()->is('admin/booking/list') && request()->query('booking_status') == 'ongoing' ? 'active-menu' : ''}}">
                   <span class="link-title">{{translate('Ongoing')}} <span class="count">{{$booking->where('booking_status', 'ongoing')->count()}}</span></span></a>
            </li>
            <li><a href="{{route('admin.booking.list', ['booking_status' => 'completed'])}}"
                   class="{{request()->is('admin/booking/list') && request()->query('booking_status') == 'completed' ? 'active-menu' : ''}}">
                   <span class="link-title">{{translate('Completed')}} <span class="count">{{$booking->where('booking_status', 'completed')->count()}}</span></span></a>
            </li>
                        <li><a href="{{route('admin.booking.list', ['booking_status' => 'canceled'])}}"
                        class="{{request()->is('admin/booking/list') && request()->query('booking_status') == 'canceled' ? 'active-menu' : ''}}">
                        <span class="link-title">{{translate('Canceled')}} <span class="count">{{$booking->where('booking_status', 'canceled')->count()}}</span></span></a>
                        </li>
                    </ul>
                </li>
            @endif


            <!-- Driver Management Section -->
            @if(auth()->user()->user_type == 'super-admin' || in_array('driver_list', $userPermissions) && auth()->user()->user_type == 'provider-admin' )
                <li class="nav-category driver-management" title="{{translate('driver_management')}}">
                    {{translate('driver_management')}}
                </li>
                <li class="has-sub-item {{request()->is('admin/driver/*') ? 'sub-menu-opened' : ''}} driver-management">
                    <a href="#" class="{{request()->is('admin/driver/*') ? 'active-menu' : ''}}">
                        <span class="material-icons" title="Drivers">directions_car</span>
                        <span class="link-title">{{translate('driver_management')}}</span>
                    </a>
                    <ul class="nav sub-menu">
                        <li><a href="{{route('admin.driver.index')}}"
                               class="{{request()->is('admin/driver/list') ? 'active-menu' : ''}}">
                               {{translate('driver_list')}}
                        </a></li>
                    </ul>
                </li>
            @endif

            <!-- Service Management Section -->
            @if((auth()->user()->user_type == 'super-admin') || auth()->user()->user_type == 'provider-admin' &&
                (in_array('categories', $userPermissions) || in_array('services', $userPermissions)))
                <li class="nav-category service-management" title="{{translate('service_management')}}">
                    {{translate('service_management')}}
                </li>
               
                    <li class="has-sub-item {{(request()->is('admin/category/')  ||  request()->is('admin/sub-category/'))?'sub-menu-opened':''}} service-management">
                        <a href="#"
                           class="{{(request()->is('admin/category/') || request()->is('admin/sub-category/'))?'active-menu':''}}">
                            <span class="material-icons" title="Service Categories">category</span>
                            <span class="link-title">{{translate('Categories')}}</span>
                        </a>
                        <ul class="nav sub-menu">
                            <li>
                                <a href="{{route('admin.category.create')}}"
                                   class="{{request()->is('admin/category/*')?'active-menu':''}}">
                                    {{translate('Category Setup')}}
                                </a>
                            </li>
                            <li>
                                <a href="{{route('admin.sub-category.create')}}"
                                   class="{{request()->is('admin/sub-category/*')?'active-menu':''}}">
                                    {{translate('Sub Category Setup')}}
                                </a>
                            </li>
                            
                        </ul>
                    </li>

                @if(in_array('services', $userPermissions) || auth()->user()->user_type == 'admin' || auth()->user()->user_type == 'super-admin')
                    <li class="has-sub-item {{request()->is('admin/service/') || request()->is('admin/vendor/') ?'sub-menu-opened':''}} service-management">
                        <a href="#" class="{{request()->is('admin/service/*')?'active-menu':''}}">
                            <span class="material-icons" title="Services">design_services</span>
                            <span class="link-title">{{translate('services')}}</span>
                        </a>
                        <ul class="nav flex-column sub-menu">
                            <li>
                                <a href="{{route('admin.service.index')}}"
                                   class="{{request()->is('admin/service/list')?'active-menu':''}}">
                                    {{translate('service_list')}}
                                </a>
                            </li>
                            <li>
                                <a href="{{route('admin.vendor.create')}}"
                                   class="{{request()->is('admin/vendor/create')?'active-menu':''}}">
                                    {{translate('vendors')}}
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                @endif
            @endif

            <!-- Additional Management Sections -->
            @if(access_checker('provider_management'))
                <li class="nav-category"
                    title="{{translate('provider_management')}}">
                    {{translate('provider_management')}}
                </li>
                <li class="has-sub-item  {{(request()->is('admin/provider/list') || request()->is('admin/provider/create') || request()->is('admin/provider/details*') || request()->is('admin/provider/edit*') || request()->is('admin/provider/collect-cash*'))?'sub-menu-opened':''}}">
                    <a href="#"
                       class="{{(request()->is('admin/provider/list') || request()->is('admin/provider/create') || request()->is('admin/provider/details*') || request()->is('admin/provider/edit*') || request()->is('admin/provider/collect-cash*'))?'active-menu':''}}">
                        <span class="material-icons" title="Providers">engineering</span>
                        <span class="link-title">{{translate('providers')}}</span>
                    </a>
                    <ul class="nav sub-menu">
                        <li>
                            <a href="{{route('admin.provider.list', ['status'=>'all'])}}"
                               class="{{(request()->is('admin/provider/list'))?'active-menu':''}}">{{translate('Provider_List')}}</a>
                        </li>
                        <li><a href="{{route('admin.provider.create')}}"
                               class="{{(request()->is('admin/provider/create'))?'active-menu':''}}">{{translate('Add_New_Provider')}}</a>
                        </li>
                    </ul>
                </li>
            @endif

            @if(auth()->user()->user_type == 'super-admin' || in_array('product_management', $userPermissions) &&  in_array('requests', $userPermissions))
                <li class="nav-category product-management" title="{{translate('product_management')}}">
                    {{translate('product_management')}}
                </li>
                <li class="has-sub-item {{request()->is('admin/product/*') ? 'sub-menu-opened' : ''}} product-management">
                    <a href="#" class="{{request()->is('admin/product/*') ? 'active-menu' : ''}}">
                        <span class="material-icons" title="{{translate('products')}}">list</span>
                        <span class="link-title">{{translate('products')}}</span>
                    </a>
                    <ul class="nav sub-menu">
                        <li>
                            <a href="{{route('admin.product.index')}}"
                               class="{{request()->is('admin/product/list') ||  request()->is('admin/product/edit/*') ? 'active-menu':''}}">
                                {{translate('Product List')}}
                            </a>
                        </li>
                        <li>
                            <a href="{{route('admin.product.create')}}"
                               class="{{request()->is('admin/product/create') ? 'active-menu':''}}">
                                {{translate('Add New Product')}}
                            </a>
                        </li>
                        <li>
                            <a href="{{route('admin.product.index')}}"
                               class="{{request()->is('admin/product/sub-category') ? 'active-menu':''}}">
                                {{translate('Product Sub Categories')}}
                            </a>
                        </li>
                    </ul>
                </li>
            @endif

            @if(access_checker('customer_management'))
                <li class="nav-category" title="{{translate('customer_management')}}">
                    {{translate('customer_management')}}
                </li>
                <li class="has-sub-item {{request()->is('admin/customer/list')||request()->is('admin/customer/create') ?'sub-menu-opened':''}}">
                    <a href="#"
                       class="{{request()->is('admin/customer/list') || request()->is('admin/customer/detail*') || request()->is('admin/customer/edit/*') ||request()->is('admin/customer/create')?'active-menu':''}}">
                        <span class="material-icons" title="Customers">person_outline</span>
                        <span class="link-title">{{translate('customers')}}</span>
                    </a>
                    <ul class="nav sub-menu">
                        <li>
                            <a href="{{route('admin.customer.index')}}"
                               class="{{request()->is('admin/customer/list')?'active-menu':''}}">
                                {{translate('customer_list')}}
                            </a>
                        </li>
                        <li>
                            <a href="{{route('admin.customer.create')}}"
                               class="{{request()->is('admin/customer/create')?'active-menu':''}}">
                                {{translate('add_new_customer')}}
                            </a>
                        </li>
                    </ul>
                </li>
            @endif

            @if(access_checker('employee_management'))
                <li class="nav-category"
                    title="{{translate('employee_management')}}">{{translate('employee_management')}}</li>
                <li>
                    <a href="{{route('admin.employee.index')}}"
                       class="{{request()->is('admin/employee/list') || request()->is('admin/employee/edit/*') ? 'active-menu':''}}">
                        <span class="material-icons" title="{{translate('employee_list')}}">list</span>
                        <span class="link-title">{{translate('employee_list')}}</span>
                    </a>
                </li>
            @endif
            {{-- <pre>{{ print_r($userPermissions) }}</pre> --}}

                        <!-- Transaction Management Section -->
                        @if(auth()->user()->user_type == 'super-admin' || in_array('product_management', $userPermissions) &&  in_array('requests', $userPermissions))
                        <li class="nav-category transaction-management" title="{{translate('transaction_management')}}">
                            {{translate('transaction_management')}}
                        </li>
                        <li class="has-sub-item {{request()->is('admin/transaction/*') ? 'sub-menu-opened' : ''}} transaction-management">
                            <a href="#" class="{{request()->is('admin/transaction/*') ? 'active-menu' : ''}}">
                                <span class="material-icons" title="Transactions">attach_money</span>
                                <span class="link-title">{{translate('transactions')}}</span>
                            </a>
                            <ul class="nav sub-menu">
                                <li><a href="{{route('admin.transaction.list', ['trx_type' => 'all'])}}"
                                       class="{{request()->is('admin/transaction/list') ? 'active-menu' : ''}}">
                                       {{translate('All Transactions')}}
                                </a></li>
                            </ul>
                        </li>
                    @endif

            @if(access_checker('promotion_management'))
                <li class="nav-category" title="{{translate('promotion_management')}}">
                    {{translate('promotion_management')}}
                </li>
                <li class="has-sub-item {{request()->is('admin/discount/*')?'sub-menu-opened':''}}">
                    <a href="#" class="{{request()->is('admin/discount/*')?'active-menu':''}}">
                        <span class="material-icons" title="{{translate('discounts')}}">redeem</span>
                        <span class="link-title">{{translate('discounts')}}</span>
                    </a>
                    <ul class="nav sub-menu">
                        <li>
                            <a href="{{route('admin.discount.list')}}"
                               class="{{request()->is('admin/discount/list')?'active-menu':''}}">
                                {{translate('discount_list')}}
                            </a>
                        </li>
                        <li>
                            <a href="{{route('admin.discount.create')}}"
                               class="{{request()->is('admin/discount/create')?'active-menu':''}}">
                                {{translate('add_new_discount')}}
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="{{route('admin.banner.create')}}"
                       class="{{request()->is('admin/banner/*')?'active-menu':''}}">
                        <span class="material-icons" title="{{translate('promotional_banners')}}">flag</span>
                        <span class="link-title">{{translate('promotional_banners')}}</span>
                    </a>
                </li>
                <li>
                    <a href="{{route('admin.push-notification.create')}}"
                       class="{{request()->is('admin/push-notification/*')?'active-menu':''}}">
                        <span class="material-icons" title="{{translate('push_notification')}}">notifications</span>
                        <span class="link-title">{{translate('Send Notifications')}}</span>
                    </a>
                </li>
            @endif

            @if(access_checker('system_management'))
                <li class="nav-category"
                    title="{{translate('system_management')}}">{{translate('system_management')}}</li>
                <li>
                    <a href="{{route('admin.business-settings.get-pages-setup')}}"
                       class="{{request()->is('admin/business-settings/get-pages-setup')?'active-menu':''}}">
                        <span class="material-icons" title="Page Settings">article</span>
                        <span class="link-title">{{translate('page_settings')}}</span>
                    </a>
                </li>
            @endif
        </ul>
    </div>
</aside>

<style>
    .service-management, .booking-management, .driver-management, .transaction-management {
        display: none;
    }
    @if(in_array('service_management', $userPermissions) || auth()->user()->user_type == 'super-admin')
        .service-management {
            display: block;
        }
    @endif
    @if(in_array('booking_management', $userPermissions) || auth()->user()->user_type == 'super-admin')
        .booking-management {
            display: block;
        }
    @endif
    @if(in_array('driver_management', $userPermissions) || auth()->user()->user_type == 'super-admin')
        .driver-management {
            display: block;
        }
    @endif
    @if(in_array('transaction_management', $userPermissions) || auth()->user()->user_type == 'super-admin')
        .transaction-management {
            display: block;
        }
    @endif
</style>