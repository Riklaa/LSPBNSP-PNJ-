    <!--sidebar-wrapper-->
    <div class="sidebar-wrapper" data-simplebar="true">
        <div class="sidebar-header" style="background-color: #088F8F">
            <div class="">
                <img src="{{ asset('assets/images/pnj.png') }}" class="logo-icon-2" style="width: 70px; height: auto;" alt="" />
            </div>
            <div>
                <h1 class="logo-text">PMB</h1>
            </div>
            <a href="javascript:;" class="toggle-btn ml-auto"> <i class="bx bx-menu"></i>
            </a>
        </div>
        <!--navigation-->
        <ul class="metismenu" id="menu">
            @if (auth()->guard('users')->user()->role == 'Admin')
                <li class="menu-label">Admin</li>
                <li><a href="{{ route('pendaftaran.list') }}">
                        <div class="parent-icon icon-color-5"><i class="bx bx-home-alt"></i></div>
                        <div class="menu-title">Pendaftaran</div>
                    </a>
                </li>
                <li><a href="{{ route('user.list') }}">
                        <div class="parent-icon icon-color-3"><i class="bx bx bx-group"></i></div>
                        <div class="menu-title">User</div>
                    </a>
                </li>
                <li>
                @elseif (auth()->guard('users')->user()->role == 'Camaba')
                <li class="menu-label">Calon Mahasiswa</li>
                <li><a href="">
                        <div class="parent-icon icon-color-1"><i class="bx bx-home-alt"></i></div>
                        <div class="menu-title">Home</div>
                    </a>
                </li>
                </li>
            @endif
        </ul>
        <!--end navigation-->
    </div>
    <!--end sidebar-wrapper-->
