@extends('admin.layouts.master')

@section('title', 'Rent Transaction')

@section('content')
    <div class="body-content">
        <!-- mobile title -->
        <h1 class="page-title-sm">Rent Transaction</h1>

        <div class="border-bottom row mb-3">
            <div class="col-sm-10">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{__('Label.Dashboard')}}</a></li>
                    <li class="breadcrumb-item active" aria-current="page"> Rent Transaction</li>
                </ol>
            </div>
            <div class="col-sm-2 d-flex align-items-center justify-content-end">
                <a href="{{ route('RenttransactionAdd') }}" class="btn btn-default mw-120" style="margin-top: -14px;">Add Transaction</a>
            </div>
        </div>

        <div class="table-responsive table">
            <table class="table table-striped text-center table-bordered" id="datatable">
                <thead>
                    <tr style="background: #F9FAFF;">
                        <th> {{__('Label.#')}} </th>
                        <th> {{__('Label.Coupons')}} </th>
                        <th> {{__('Label.User Name')}} </th>
                        <th> Email </th>
                        <th> Mobile Number </th>
                        <th> Video Name </th>
                        <th> Type </th>
                        <th> Price </th>
                        <th> Transaction Date </th>
                        <th> Expiry Date </th>
                        <th> Status</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('pagescript')
    <script>
        $(document).ready(function() {
            $(function() {
                var table = $('#datatable').DataTable({
                    "responsive": true,
                    "autoWidth": false,
                    language: {
                        paginate: {
                            previous: "<img src='{{url('assets/imgs/left-arrow.png')}}' >",
                            next: "<img src='{{url('assets/imgs/left-arrow.png')}}' style='transform: rotate(180deg)'>"
                        }
                    },
                    processing: true,
                    serverSide: true,
                    ajax: "{{ route('RentTransactionData') }}",
                    columns: [{
                            data: 'DT_RowIndex',
                            name: 'DT_RowIndex'
                        },
                        {
                            data: 'unique_id',
                            name: 'unique_id',
                            orderable: false,
                            "render": function(data, type, full, meta) {
                                if (data) {
                                    return data;
                                } else {
                                    return "-";
                                }
                            },
                        },
                        {
                            data: 'user.name',
                            name: 'user.name',
                            orderable: false,
                            "render": function(data, type, full, meta) {
                                if (data) {
                                    return data;
                                } else {
                                    return "-";
                                }
                            },
                        },
                        {
                            data: 'user.email',
                            name: 'user.email',
                            orderable: false,
                            "render": function(data, type, full, meta) {
                                if (data) {
                                    return data;
                                } else {
                                    return "-";
                                }
                            },
                        },
                        {
                            data: 'user.mobile',
                            name: 'user.mobile',
                            orderable: false,
                            "render": function(data, type, full, meta) {
                                if (data) {
                                    return data;
                                } else {
                                    return "-";
                                }
                            },
                        },
                        {
                            data: 'video_name',
                            name: 'video_name',
                            orderable: false,
                            "render": function(data, type, full, meta) {
                                if (data) {
                                    return data;
                                } else {
                                    return "-";
                                }
                            },
                        },
                        {
                            data: 'video_type',
                            name: 'video_type',
                            orderable: false,
                            "render": function(data, type, row, meta) {
                                if (row.video_type == 1) {
                                    return "Video";
                                } else {
                                    return "Show";
                                }
                            },
                        },
                        {
                            data: 'price',
                            name: 'price',
                            orderable: false,
                            render: function(data, type, row, meta) {
                                return row.price;
                            }
                        },
                        {
                            data: 'date',
                            name: 'date',
                            "render": function(data, type, full, meta) {
                                if (data) {
                                    return data;
                                } else {
                                    return "-";
                                }
                            },
                        },
                        {
                            data: 'expiry_date',
                            name: 'expiry_date',
                            "render": function(data, type, full, meta) {
                                if (data) {
                                    return data;
                                } else {
                                    return "-";
                                }
                            },
                        },
                        {
                            data: 'action',
                            name: 'action',
                            searchable: false
                        },
                    ],
                });
            });
        });
    </script>
@endsection