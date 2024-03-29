<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Tab Icon -->
    <link rel="shortcut icon" href="{{tab_icon()}}">

    <!-- Title -->
    @if(setting_app_name() == "")
    <title>{{env('APP_NAME')}}</title>
    @else
    <title>{{setting_app_name()}}</title>
    @endif

    <link rel="stylesheet" href="{{asset('/assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('/assets/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    <link href="{{asset('/assets/css/toastr.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('/assets/css/style.css') }}" rel="stylesheet">
    <!-- Select2 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Date Time Picker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">

    <input type="hidden" value="{{URL('')}}" id="base_url">

    <!-- Custom CSS -->
    <style>
        #dvloader {
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            position: fixed;
            display: block;
            opacity: 0.7;
            background-color: #fff;
            z-index: 9999;
            text-align: center;
        }

        #dvloader image {
            position: absolute;
            top: 100px;
            left: 240px;
            z-index: 100;
        }

        .db-color-card.subscribers-card {
            background: #c9b7f1;
            color: #530899;
        }

        .db-color-card.rent_video-card {
            background: #dfab91;
            color: #692705;
        }

        .db-color-card.plan-card {
            background: #999898;
            color: #201f1e;
        }

        .db-color-card.green-card {
            background: #83cf78;
            color: #245c1c;
        }

        .db-color-card.category-card {
            background: #e9aaf1;
            color: #9d0bb1;
        }

        .select2-container .select2-selection--single {
            border: 1px solid #f5f5f5;
            background: #fdfdfd;
            border-radius: 8px;
            padding: 8px;
            font-size: 14px;
            height: auto !important;
        }
    </style>
</head>

<body>

    @include('admin.layouts.sidebar')

    <div class="right-content">

        @include('admin.layouts.header')
        @yield('content')
        <div style="display:none" id="dvloader"><img src="{{ asset('assets/imgs/loading.gif')}}" /></div>
    </div>

    <!-- Feather Icon -->
    <script src="{{ asset('https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js') }}"></script>

    <script src="{{ asset('assets/js/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/js/popper.min.js') }}"></script>
    <script src="{{ asset('assets/bootstrap/js/bootstrap.min.js') }}"></script>

    <!-- Video Play Model script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Datatable -->
    <script src="{{ asset('assets/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('/assets/js/js.js')}}"></script>

    <!-- Toastr -->
    <script src="{{ asset('/assets/js/toastr.min.js')}}"></script>

    <!-- chart -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>

    <!-- Select2 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    <!-- Chunk JS -->
    <!-- 1 file -->
    <script src="{{ asset('/assets/js/plupload.full.min.js')}}"></script>
    <!-- 2 file -->
    <script src="{{ asset('/assets/js/common.js')}}"></script>

    <!-- Data Time Picker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

    <script>
        function get_responce_message(resp, form_name = "", url = "") {
            if (resp.status == '200') {
                toastr.success(resp.success);
                document.getElementById(form_name).reset();
                if (url != "") {
                    setTimeout(function() {
                        window.location.replace(url);
                    }, 500);
                }
            } else {
                var obj = resp.errors;
                if (typeof obj === 'string') {
                    toastr.error(obj);
                } else {
                    $.each(obj, function(i, e) {
                        toastr.error(e);
                    });
                }
            }
        }

        // Banner Toastr Msg
        function get_responce_message2(resp, form_name = "", url = "", status) {
            if (resp.status == '200') {
                // toastr.success(resp.success);
                // document.getElementById(form_name).reset();
                if (status == 2) {
                    localStorage.setItem("Status2", resp.success)
                } else if (status == 3) {
                    localStorage.setItem("Status3", resp.success)
                } else {
                    localStorage.setItem("Status1", resp.success)
                }

                setTimeout(function() {
                    window.location.replace(url);
                }, 500);
            } else {
                var obj = resp.errors;
                if (typeof obj === 'string') {
                    toastr.error(obj);
                } else {
                    $.each(obj, function(i, e) {
                        toastr.error(e);
                    });
                }
            }
        }
        $(document).ready(function() {
            //get it if Status key found
            if (localStorage.getItem("Status2")) {
                toastr.success("Data Deleted SuccessFully.");
                localStorage.clear();
            }
            if (localStorage.getItem("Status1")) {
                toastr.success("Data Added SuccessFully.");
                localStorage.clear();
            }
            if (localStorage.getItem("Status3")) {
                toastr.success("Data Updated SuccessFully.");
                localStorage.clear();
            }
        });

        function get_responce_message1(resp, url = "") {
            if (resp.status == '200') {
                toastr.success(resp.success);
                setTimeout(function() {
                    window.location.replace(url);
                }, 500);
            } else {
                var obj = resp.errors;
                if (typeof obj === 'string') {
                    toastr.error(obj);
                } else {
                    $.each(obj, function(i, e) {
                        toastr.error(e);
                    });
                }
            }
        }
        $(document).ready(function() {
            @if(Session::has('error'))
                toastr.error('{{ Session::get('error') }}');
            @elseif(Session::has('success'))
                toastr.success('{{ Session::get('success') }}');
            @endif

            $('#image').change(function() {
                let reader = new FileReader();
                reader.onload = (e) => {
                    $('#preview-image-before-upload').attr('src', e.target.result);
                }
                reader.readAsDataURL(this.files[0]);
            });

            $('#thumbnail').change(function() {
                let reader = new FileReader();
                reader.onload = (e) => {
                    $('#preview-image-before-upload').attr('src', e.target.result);
                }
                reader.readAsDataURL(this.files[0]);
            });

            $('#landscape').change(function() {
                let reader = new FileReader();
                reader.onload = (e) => {
                    $('#preview-image-before-upload1').attr('src', e.target.result);
                }
                reader.readAsDataURL(this.files[0]);
            });
        });
    </script>

    @yield('pagescript')

</body>

</html>