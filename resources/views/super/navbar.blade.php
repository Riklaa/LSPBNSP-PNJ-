<!--header-->
<header class="top-header" style="background-color: #088F8F">
    <nav class="navbar navbar-expand">
        <div class="left-topbar d-flex align-items-center">
            <a href="javascript:;" class="toggle-btn"> <i class="bx bx-menu"></i>
            </a>
        </div>
        <div class="media-body user-info">

        </div>
        <div class="right-topbar ms-auto">
            <ul class="navbar-nav">
                <li class="nav-item dropdown dropdown-user-profile">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;"
                        data-bs-toggle="dropdown">
                        <div class="d-flex user-box align-items-center" style="">
                            {{-- <h6 style="color: #FFFFFF" class="user-name mb-0" id="nama_user_login"
                                name="nama_user_login">{{ $nama_user }}</h6> --}}
                            <div class="media user-box align-items-center mx-2">
                                <div class="" style="color: #FFFFFF"><i class="bx bx-user-circle"></i></div>
                            </div>
                        </div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end">
                        {{-- <a class="dropdown-item" href="{{ route('user.profile') }}"><i class="bx bx-user"></i><span>Profile
                            </span></a> --}}
                        <!-- <a class="dropdown-item" href=""><i class="bx bx-user"></i><span>Alihkan Peran</span></a> -->
                        <a class="dropdown-item" href="{{ route('logout') }}"
                            onclick="showConfirmLogout(event, '{{ route('logout') }}')"><i
                                class="bx bx-log-out"></i><span>Logout</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!--end header-->
