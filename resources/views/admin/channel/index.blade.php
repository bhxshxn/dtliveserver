@extends('admin.layouts.master')

@section('title', __('Label.Channel'))

@section('content') 
    <div class="body-content">
      <!-- mobile title -->
      <h1 class="page-title-sm">@yield('title')</h1>

      <div class="border-bottom row mb-3">
        <div class="col-sm-10">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{__('Label.Dashboard')}}</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{__('Label.Channel')}}</li>
          </ol>
        </div>
        <div class="col-sm-2 d-flex align-items-center justify-content-end">
          <a href="{{ route('channelAdd') }}" class="btn btn-default mw-150" style="margin-top:-14px">{{__('Label.Add Channel')}}</a>
        </div>
      </div>

      <div class="table-responsive">
        <table class="table table-striped channel-table text-center table-bordered">
          <thead>
            <tr style="background: #F9FAFF;">
            <th> {{__('Label.#')}} </th>
            <th> {{__('Label.Name')}} </th>
            <th> {{__('Label.Image')}} </th>
            <th> {{__('Label.Landscape')}} </th>
            <th> {{__('Label.Action')}} </th>
          </tr>
          </thead>
          <tbody></tbody>
        </table>
      </div>
    </div>
@endsection

@section('pagescript')
  <script>
    $(document).ready(function() {
      $(function () {
        var table = $('.channel-table').DataTable({
          "responsive": true,
          "autoWidth": false,
          processing: true,
          serverSide: true,
          language: {
            paginate: {
              previous: "<img src='{{url('assets/imgs/left-arrow.png')}}' >",
              next: "<img src='{{url('assets/imgs/left-arrow.png')}}' style='transform: rotate(180deg)'>"
            }
          },
          ajax: "{{ route('channelData') }}",
          columns: [
            {data: 'DT_RowIndex', name: 'DT_RowIndex'},
            {data: 'name', name: 'name',
                "render": function (data, type, full, meta) {
                if(data) {
                    return data;
                } else {
                    return "-";
                }
                },
            },
            {data: 'image', name: 'image', orderable: false, searchable: false,
                "render": function(data, type, full, meta) {
                    return "<a href='" + data + "' target='_blank' title='Watch'><img src='" + data + "' class='img-thumbnail' style='height:65px; width:50px'></a>";
                },
            },
            {data: 'landscape', name: 'landscape', orderable: false, searchable: false,
                "render": function(data, type, full, meta) {
                    return "<a href='" + data + "' target='_blank' title='Watch'><img src='" + data + "' class='img-thumbnail' style='height:50px; width:65px'></a>";
                },
            },
            {data: 'action', name: 'action', orderable: false, searchable: false},
          ],
        });
      });
    });
  </script>
@endsection