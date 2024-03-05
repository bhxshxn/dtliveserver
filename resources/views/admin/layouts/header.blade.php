<header class="header">
    <div class="title-control">
        <button class="btn side-toggle">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <!-- Mobile Logo -->
        @if(setting_app_name() == "")
            <a href="{{route('dashboard')}}" class=" primary-color side-logo">
                <h3>{{ env('APP_NAME')}}</h3>
            </a>
        @else
            <a href="{{route('dashboard')}}" class=" primary-color side-logo">
                <h3>{{setting_app_name()}}</h3>
            </a>
        @endif

        <h1 class="page-title">@yield('title')</h1>
    </div>

    <div class="head-control">
        <!-- Setting -->
        <a href="{{ route('setting') }}" class="btn head-btn  d-none d-md-flex">
            <img src="{{ asset('assets/imgs/setting-colored.png') }}" />
        </a>

        <!-- Profile -->
        <div class="dropdown dropright">
            <a href="#" class="btn head-btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img src="{{ asset('assets/imgs/Profile.png') }}" class="avatar-img" />
            </a>
            <div class="dropdown-menu p-2 mt-2" aria-labelledby="dropdownMenuLink">
                <div>
                    <?php $data = adminEmail(); if($data){echo $data['user_name'] ?: "";} ?>
                    <br><hr class="mt-2">
                    <?php $data = adminEmail(); if($data){echo $data['email'] ?: "";} ?>
                </div><hr class="mt-2">
                <a class="dropdown-item" href="{{ route('adminLogout') }}" style="color:#4E45B8;"><span><img src="{{ asset('assets/imgs/Logout-sm.png') }}" class="mr-2"></span>{{__('Label.Logout')}}</a>
            </div>
        </div>
    </div>
</header>