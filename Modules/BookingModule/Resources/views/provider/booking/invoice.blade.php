<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>{{translate('invoice')}}</title>
    <link href="{{asset('public/assets/css/bootstrap.min.css')}}" rel="stylesheet" id="bootstrap-css">
    <script src="{{asset('public/assets/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('public/assets/js/jquery.min.js')}}"></script>
    <style>
        body {
            background-color: #F9FCFF;
            font-size: 10px !important;
        }

        a {
            color: rgb(65, 83, 179) !important;
            text-decoration: none !important;
        }

        @media print {
            a {
                text-decoration: none !important;
                -webkit-print-color-adjust: exact;
            }
        }

        #invoice {
            padding: 30px;
        }

        .invoice {
            position: relative;
            min-height: 972px;
            max-width: 972px;
            margin-left: auto;
            margin-right: auto;

        }

        .white-box-content {
            background-color: #FFF;
        }

        .invoice header {
            margin-bottom: 16px;
        }

        .invoice .contacts {
            margin-bottom: 16px
        }

        .invoice .company-details,
        .invoice .invoice-details {
            text-align: right
        }

        .invoice .thanks {
            margin-top: 60px;
            margin-bottom: 30px
        }

        .invoice .footer {
            background-color: rgba(4, 97, 165, 0.05);
        }

        @media print {
            .invoice .notices {
                background-color: #F7F7F7 !important;
                -webkit-print-color-adjust: exact;
            }
        }

        .invoice table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px;
        }

        .invoice table td, .invoice table th {
            padding: 15px;
        }

        .invoice table th {
            white-space: nowrap;
            font-weight: 500;
            background-color: rgba(4, 97, 165, 0.05);
        }

        @media print {
            .invoice table th {
                background-color: rgba(4, 97, 165, 0.05) !important;
                -webkit-print-color-adjust: exact;
            }
        }

        .invoice table tfoot td {
            background: 0 0;
            border: none;
            white-space: nowrap;
            text-align: right;
            padding: 8px 14px;
        }

        .invoice table tfoot tr:first-child td {
            padding-top: 16px;
        }

        .fw-700 {
            font-weight: 700;
        }
        .fs-9 {
            font-size: 9px !important;
        }
        .fs-8 {
            font-size: 8px !important;
        }
        .lh-1 {
            line-height: 1;
        }
        .rounded-12 {
            border-radius: 12px;
        }
        .fz-12 {
            font-size: 12px;
        }
    </style>
</head>
<body>
<div id="invoice">
    <div class="invoice d-flex flex-column">
        <div>
            <header>
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="text-uppercase fw-700">{{translate("invoice")}}</h3>
                        <div>{{translate('Booking')}} #{{$booking->readable_id}}</div>
                        <div>{{translate('date')}}: {{date('d-M-Y h:ia',strtotime($booking->created_at))}}</div>
                    </div>
                    <div class="col company-details">
                        <a target="_blank" href="#">
                            @php($logo = business_config('business_logo','business_information'))
                            <img width="84" height="17" src="{{asset('storage/app/public/business')}}/{{$logo->live_values}}"
                                 data-holder-rendered="true"/>
                        </a>
                        @php($business_email = business_config('business_email','business_information'))
                        @php($business_phone = business_config('business_phone','business_information'))
                        @php($business_address = business_config('business_address','business_information'))
                        <div class="mt-2">{{$business_address->live_values}}</div>
                        <div>{{$business_phone->live_values}}</div>
                        <div>{{$business_email->live_values}}</div>
                    </div>
                </div>
            </header>

            @php($customer_name = $booking->customer ? $booking?->customer?->first_name.' '.$booking?->customer?->last_name : $booking?->service_address?->contact_person_name)
            @php($customer_phone = $booking->customer ? $booking?->customer?->phone : $booking?->service_address?->contact_person_number)

            <div class="white-box-content border rounded-12 border">
                <div class="border-bottom p-3">
                    <div class="row align-items-center justify-content-between">
                        <div class="col">
                            <div class="row align-items-center">
                                <div class="col">
                                    <div class="fs-9">{{translate('Customer')}}</div>
                                    <div>{{$customer_name}}</div>
                                </div>
                                <div class="col">
                                    <div class="fs-9">{{translate('phone')}}</div>
                                    <div>{{$customer_phone}}</div>
                                </div>
                                <div class="col">
                                    <div class="fs-9">{{translate('email')}}</div>
                                    <div>{{$booking?->customer?->email}}</div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="text-right">
                                <div>Invoice of ({{currency_code()}})</div>
                                <h5 class="text-primary fw-700 mb-0 lh-1 mt-1">{{with_currency_symbol($booking->total_booking_amount)}}</h5>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="p-3">
                    <div class="row contacts">

                        <div class="col">
                            <div>
                                <div class="fs-9">{{translate('Payment')}}</div>
                                <div class="mt-1">{{ str_replace(['_', '-'], ' ', $booking->payment_method) }}</div>
                            </div>
                            <div class="mt-3">
                                <div class="fs-9">{{translate('Reference ID')}}</div>
                                <div class="mt-1">{{$booking->readable_id}}</div>
                            </div>
                        </div>

                        <div class="col border-left">
                            <h6 class="fz-12">{{translate('Service Address')}}</h6>
                            <div class="fs-9">{{$customer_name}}</div>
                            <div class="fs-9">{{$customer_phone}}</div>
                            <div class="fs-9">{{$booking?->service_address?->address??translate('not_available')}}</div>
                        </div>

                        <div class="col border-left">
                            <h6 class="fz-12">{{translate('Service Time')}}</h6>
                            <div class="fs-9">{{translate('Request Date')}} : {{date('d-M-Y h:ia',strtotime($booking->created_at))}}</div>
                            <div class="fs-9">{{translate('Service Date')}} : {{date('d-M-Y h:ia',strtotime($booking->service_schedule))}}</div>
                        </div>
                    </div>


                    <table cellspacing="0" cellpadding="0">
                        <thead>
                            <tr>
                                <th class="text-left">{{translate('SL')}}</th>
                                <th class="text-left text-uppercase">{{translate('description')}}</th>
                                <th class="text-center text-uppercase">{{translate('qty')}}</th>
                                <th class="text-right text-uppercase">{{translate('cost')}}</th>
                                <th class="text-right text-uppercase">{{translate('total')}}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php($sub_total=0)
                            @foreach($booking->detail as $index=>$item)
                                <tr>
                                    <td class="border-bottom text-left">{{(strlen($index+1)<2?'0':'').$index+1}}</td>
                                    <td class="border-bottom text-left">
                                        <div>{{$item->service->name??''}}</div>
                                        <div>{{$item->variant_key}}</div>
                                    </td>
                                    <td class="border-bottom text-center">{{$item->quantity}}</td>
                                    <td class="border-bottom text-right">{{with_currency_symbol($item->service_cost)}}</td>
                                    <td class="border-bottom text-right">{{with_currency_symbol($item->total_cost)}}</td>
                                </tr>
                                @php($sub_total+=$item->service_cost*$item->quantity)
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="3"></td>
                                <td class="">{{translate('subtotal')}}</td>
                                <td>{{with_currency_symbol($sub_total)}}</td>
                            </tr>
                            <tr>
                                <td colspan="3"></td>
                                <td>{{translate('Discount')}}</td>
                                <td>- {{with_currency_symbol($booking->total_discount_amount)}}</td>
                            </tr>
                            <tr>
                                <td colspan="3"></td>
                                <td>{{translate('Campaign_Discount')}}</td>
                                <td>- {{with_currency_symbol($booking->total_campaign_discount_amount)}}</td>
                            </tr>
                            <tr>
                                <td colspan="3"></td>
                                <td class="">{{translate('Coupon_Discount')}} </td>
                                <td>- {{with_currency_symbol($booking->total_coupon_discount_amount)}}</td>
                            </tr>
                            <tr>
                                <td colspan="3"></td>
                                <td class="">{{translate('Vat_/_Tax')}} (%)</td>
                                <td>+ {{with_currency_symbol($booking->total_tax_amount)}}</td>
                            </tr>
                            @if ($booking->extra_fee > 0)
                                @php($additional_charge_label_name = business_config('additional_charge_label_name', 'booking_setup')->live_values??'Fee')
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" class="text-uppercase">{{$additional_charge_label_name}}</td>
                                    <td>+ {{with_currency_symbol($booking->extra_fee)}}</td>
                                </tr>
                            @endif
                            <tr>
                                <td colspan="3"></td>
                                <td class="fw-700 border-top">{{translate('Total')}}</td>
                                <td class="fw-700 border-top">{{with_currency_symbol($booking->total_booking_amount)}}</td>
                            </tr>
                            @if ($booking->booking_partial_payments->isNotEmpty())
                                @foreach($booking->booking_partial_payments as $partial)
                                    <tr>
                                        <td colspan="3"></td>
                                        <td class="fw-700">{{translate('Paid_by')}} {{str_replace('_', ' ',$partial->paid_with)}}</td>
                                        <td class="fw-700 border-top">{{with_currency_symbol($partial->paid_amount)}}</td>
                                    </tr>
                                @endforeach
                            @endif

                            <?php
                            $dueAmount = 0;

                            if (!$booking->is_paid && $booking?->booking_partial_payments?->count() == 1) {
                                $dueAmount = $booking->booking_partial_payments->first()?->due_amount;
                            }

                            if (in_array($booking->booking_status, ['pending', 'accepted', 'ongoing']) && $booking->payment_method != 'cash_after_service' && $booking->additional_charge > 0) {
                                $dueAmount += $booking->additional_charge;
                            }

                            if (!$booking->is_paid && $booking->payment_method == 'cash_after_service') {
                                $dueAmount = $booking->total_booking_amount;
                            }
                            ?>

                            @if($dueAmount > 0)
                            <tr>
                                <td colspan="3"></td>
                                <td class="fw-700">{{ translate('Due_Amount') }}</td>
                                <td class="fw-700">{{ with_currency_symbol($dueAmount) }}</td>
                            </tr>
                            @endif

                            @if($booking->payment_method != 'cash_after_service' && $booking->additional_charge < 0)
                                <tr>
                                    <td colspan="3"></td>
                                    <td class="fw-700">{{translate('Refund')}}</td>
                                    <td class="fw-700">{{with_currency_symbol(abs($booking->additional_charge))}}</td>
                                </tr>
                            @endif
                        </tfoot>
                    </table>
                </div>

                <div class="mt-5 text-center mb-4">{{translate('Thanks for using our service')}}.</div>
            </div>
        </div>

        <div class="py-4">
            <div class="fw-700">{{translate('Terms & Conditions')}}</div>
            <div>{{translate('Change of mind is not applicable as a reason for refund')}}</div>
        </div>

        <div class="footer p-3">
            <div class="row">
                <div class="col">
                    <div class="text-left">
                        {{Request()->getHttpHost()}}
                    </div>
                </div>
                <div class="col">
                    <div class="text-center">
                        {{$business_phone->live_values}}
                    </div>
                </div>
                <div class="col">
                    <div class="text-right">
                        {{$business_email->live_values}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    "use strict";

    function printContent(el) {
        var restorepage = $('body').html();
        var printcontent = $('#' + el).clone();
        $('body').empty().html(printcontent);
        window.print();
        $('body').html(restorepage);
    }

    printContent('invoice');
</script>
</body>
</html>
