<div class="sidebar">
    <div class="side-head">

        @if(setting_app_name() == "")
        <a href="{{route('dashboard')}}">
            <img src="{{asset('assets/imgs/dtlive.png')}}" alt="" class="side-logo" />
        </a>
        @else
        <a href="{{route('dashboard')}}" style="color:#4e45b8;">
            <h3>{{setting_app_name()}}</h3>
        </a>
        @endif
        <button class="btn side-toggle">
            <span></span>
            <span></span>
            <span></span>
        </button>
    </div>
    <ul class="side-menu mt-4">
        <li class="side_line {{ request()->is('admin/dashboard') ? 'active' : '' }}">
            <a href="{{ route('dashboard')}}">
                <img class="menu-icon" src="{{asset('/assets/imgs/dashboard.png')}}" alt="" />
                <span>{{__('Label.Dashboard')}}</span>
            </a>
        </li>
        <li class="dropdown {{ request()->is('admin/type*') ? 'active' : '' }}{{ request()->is('admin/avatar*') ? 'active' : '' }}{{ request()->is('admin/language*') ? 'active' : '' }}{{ request()->is('admin/session*') ? 'active' : '' }}{{ request()->is('admin/page*') ? 'active' : '' }}{{ request()->is('admin/category*') ? 'active' : '' }}{{ request()->is('admin/coupon*') ? 'active' : '' }}">
            <a class="dropdown-toggle" id="dropdownMenuClickable" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="menu-icon" src="{{ asset('assets/imgs/settings.png') }}" alt="" />
                <span> Basic Settings </span>
            </a>
            <ul class="dropdown-menu side-submenu {{ request()->is('admin/type*') ? 'show' : '' }}{{ request()->is('admin/avatar*') ? 'show' : '' }}{{ request()->is('admin/language*') ? 'show' : '' }}{{ request()->is('admin/session*') ? 'show' : '' }}{{ request()->is('admin/page*') ? 'show' : '' }}{{ request()->is('admin/category*') ? 'show' : ''}}{{request()->is('admin/coupon*') ? 'show' : '' }}" aria-labelledby="dropdownMenuClickable">
                <li class="side_line {{ request()->is('admin/type*') ? 'active' : '' }}">
                    <a href="{{ route('type') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/type.png') }}" alt="" />
                        <span>{{__('Label.Types')}}</span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/category*') ? 'active' : '' }}">
                    <a href="{{ route('category') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/category.png') }}" alt="" />
                        <span>{{__('Label.Category')}}</span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/avatar*') ? 'active' : '' }}">
                    <a href="{{ route('Avatar') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/avatar.png') }}" alt="" />
                        <span>Avatar</span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/language*') ? 'active' : '' }}">
                    <a href="{{ route('language') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/languages.png') }}" alt="" />
                        <span>{{__('Label.Languages')}}</span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/session*') ? 'active' : '' }}">
                    <a href="{{ route('session') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/session.png') }}" alt="" />
                        <span>{{__('Label.Session')}}</span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/page*') ? 'active' : '' }}">
                    <a href="{{ route('Page') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/page.png') }}" alt="" />
                        <span>Page</span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/coupon*') ? 'active' : '' }}">
                    <a href="{{ route('coupon') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/coupons.png') }}" alt="" />
                        <span>{{__('Label.Coupons')}}</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="dropdown {{ request()->is('admin/banner*') ? 'active' : '' }}{{ request()->is('admin/VideoSection*') ? 'active' : '' }}">
            <a class="dropdown-toggle" id="dropdownMenuClickable" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <img class="menu-icon" src="{{ asset('assets/imgs/home.png') }}" alt="" />
                <span> Home </span>
            </a>
            <ul class="dropdown-menu side-submenu {{ request()->is('admin/banner*') ? 'show' : '' }}{{ request()->is('admin/VideoSection*') ? 'show' : '' }}"
                aria-labelledby="dropdownMenuClickable">
                <li class="side_line {{ request()->is('admin/banner*') ? 'active' : '' }}">
                    <a href="{{ route('Banner') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/banner.png') }}" alt="" />
                        <span> Banner </span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/VideoSection*') ? 'active' : '' }}">
                    <a href="{{ route('VideoSection') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/video_section.png') }}" alt="" />
                        <span> Section </span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="dropdown {{ request()->is('admin/channel*') ? 'active' : '' }}{{ request()->is('admin/Channel-Banner*') ? 'active' : '' }}{{ request()->is('admin/ChannelSection*') ? 'active' : '' }}">
            <a class="dropdown-toggle" id="dropdownMenuClickable" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <img class="menu-icon" src="{{ asset('assets/imgs/channel_section.png') }}" alt="" />
                <span> Channel </span>
            </a>
            <ul class="dropdown-menu side-submenu {{ request()->is('admin/channel*') ? 'show' : '' }}{{ request()->is('admin/Channel-Banner*') ? 'show' : '' }}{{ request()->is('admin/ChannelSection*') ? 'show' : '' }}"
                aria-labelledby="dropdownMenuClickable">
                <li class="side_line {{ request()->is('admin/channel*') ? 'active' : '' }}">
                    <a href="{{ route('channel') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/channel.png') }}" alt="" />
                        <span> Channels </span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/Channel-Banner*') ? 'active' : '' }}">
                    <a href="{{ route('ChannelBanner')}}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/banner.png') }}" alt="" />
                        <span> Channel Banner</span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/ChannelSection*') ? 'active' : '' }}">
                    <a href="{{ route('ChannelSection')}}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/video_section.png') }}" alt="" />
                        <span> Channel Section </span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="side_line {{ request()->is('admin/user*') ? 'active' : '' }}">
            <a href="{{ route('user') }}">
                <img class="menu-icon" src="{{ asset('assets/imgs/user.png') }}" alt="" />
                <span>{{__('Label.Users')}}</span>
            </a>
        </li>
        <li class="side_line {{ request()->is('admin/cast*') ? 'active' : '' }}">
            <a href="{{ route('cast') }}">
                <img class="menu-icon" src="{{ asset('assets/imgs/cast.png') }}" alt="" />
                <span>{{__('Label.Cast')}}</span>
            </a>
        </li>
        <li class="side_line {{ request()->is('admin/video*') ? 'active' : '' }}">
            <a href="{{ route('video') }}">
                <img class="menu-icon" src="{{ asset('assets/imgs/videos.png') }}" alt="" />
                <span>{{__('Label.Videos')}}</span>
            </a>
        </li>
        <li class="side_line {{ request()->is('admin/TVShow*') ? 'active' : '' }}">
            <a href="{{ route('TVShow') }}">
                <img class="menu-icon" src="{{ asset('assets/imgs/TvShow.png') }}" alt="" />
                <span>{{__('Label.TV Shows')}}</span>
            </a>
        </li>
        <li class="dropdown {{ request()->is('admin/upcomingvideo*') ? 'active' : '' }}{{ request()->is('admin/upcomingtvshow*') ? 'active' : '' }}">
            <a class="dropdown-toggle" id="dropdownMenuClickable" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="menu-icon" src="{{ asset('assets/imgs/videos.png') }}" alt="" />
                <span> Upcoming </span>
            </a>
            <ul class="dropdown-menu side-submenu {{ request()->is('admin/upcomingvideo*') ? 'show' : '' }}{{ request()->is('admin/upcomingtvshow*') ? 'show' : '' }}" aria-labelledby="dropdownMenuClickable">
                <li class="side_line {{ request()->is('admin/upcomingvideo*') ? 'active' : '' }}">
                    <a href="{{ route('upcomingvideo') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/videos.png') }}" alt="" />
                        <span> Videos </span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/upcomingtvshow*') ? 'active' : '' }}">
                    <a href="{{ route('upcomingTVShow')}}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/TvShow.png') }}" alt="" />
                        <span> TV Shows</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="dropdown {{request()->is('admin/renttransaction*') ? 'active' : '' }}{{ request()->is('admin/rent') ? 'active' : '' }}{{ request()->is('admin/rent/*') ? 'active' : '' }}">
            <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="menu-icon" src="{{ asset('assets/imgs/rent.png') }}" alt="" />
                <span> Rent </span>
            </a>
            <ul class="dropdown-menu side-submenu {{request()->is('admin/renttransaction*') ? 'show' : '' }}{{ request()->is('admin/rent') ? 'show' : '' }}{{ request()->is('admin/rent/*') ? 'show' : '' }}">
                <li class="side_line {{ request()->is('admin/rent') ? 'active' : '' }}{{ request()->is('admin/rent/*') ? 'active' : '' }}">
                    <a href="{{ route('RentVideo') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/rent.png') }}" alt="" />
                        <span>Rent Videos</span>
                    </a>
                </li>
                <li class="side_line {{request()->is('admin/renttransaction*') ? 'active' : '' }}">
                    <a href="{{ route('RentTransaction') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/transaction_list.png') }}" alt="" />
                        <span> Rent Transactions </span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="dropdown {{ (request()->is('admin/packages*')) ? 'active' : '' }}{{ request()->is('admin/payment*') ? 'active' : '' }}{{ (request()->routeIs('transaction*')) ? 'active' : '' }}">
            <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="menu-icon" src="{{ asset('assets/imgs/subcription.png') }}" alt="" />
                <span> {{__('Label.Subscription')}} </span>
            </a>
            <ul class="dropdown-menu side-submenu {{ (request()->is('admin/packages*')) ? 'show' : '' }}{{ request()->is('admin/payment*') ? 'show' : '' }}{{ (request()->routeIs('transaction*')) ? 'show' : '' }}">
                <li class="side_line {{ request()->is('admin/packages*') ? 'active' : '' }}">
                    <a href="{{ route('package') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/package.png') }}" alt="" />
                        <span> Package </span>
                    </a>
                </li>
                <li class="side_line {{ (request()->routeIs('transaction*')) ? 'active' : '' }}">
                    <a href="{{ route('transaction') }}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/transaction_list.png') }}" alt="" />
                        <span> {{__('Label.Transactions')}} </span>
                    </a>
                </li>
                <li class="side_line {{ request()->is('admin/payment*') ? 'active' : '' }}">
                    <a href="{{ route('Payment')}}" class="dropdown-item">
                        <img class="submenu-icon" src="{{ asset('assets/imgs/Payment.png') }}" alt="" />
                        <span>{{__('Label.Payment')}}</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="side_line {{ request()->is('admin/setting*') ? 'active' : '' }}">
            <a href="{{ route('setting') }}">
                <img class="menu-icon" src="{{ asset('assets/imgs/settings.png') }}" alt="" />
                <span>{{__('Label.Settings')}}</span>
            </a>
        </li>
        <li class="side_line {{ request()->is('admin/notification') ? 'active' : '' }}{{ request()->is('admin/notification/add') ? 'active' : '' }}{{ request()->is('admin/notification/setting') ? 'active' : '' }} ">
            <a href="{{ route('notification') }}">
                <img class="menu-icon" src="{{ asset('assets/imgs/Notification.png') }}" alt="" />
                <span>{{__('Label.Notification')}}</span>
            </a>
        </li>
        <li>
            <a href="{{ route('adminLogout') }}">
                <img class="menu-icon" src="{{ asset('assets/imgs/logout.png')}}" alt="" />
                <span>{{__('Label.Logout')}}</span>
            </a>
        </li>
    </ul>
</div>
