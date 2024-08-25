@extends('super.master-layout')
@section('custom-css')
@endsection

@section('title')
@endsection

@section('content')
    <div class="container-fluid">
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            {{-- <div class="breadcrumb-title pe-3">Tambah User</div> --}}
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href=""><i class="bx bx-home-alt"></i></a></li>
                        <li class="breadcrumb-item" aria-current="page">
                            <a href="{{route('user.list')}}">Edit User</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Edit User</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">
                            <h4 class="mb-0">Edit User</h4>
                        </div>
                        <form method="POST" action="{{ route('user.edit.proses')}}" id="Form" enctype="multipart/form-data">
                            @csrf
                            <input value="{{ $dataUser->id_user }}" type="hidden" name="oldid" id="oldid">
                            <div class="row mb-3">
                                <div class="col-12">
                                    <label class="form-label">Nama Lengkap</label>
                                    <input class="form-control form-control-sm select-element" type="text" value="{{ $dataUser->nama }}"
                                        name="nama" id="nama" placeholder="Masukkan Nama Lengkap" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-12">
                                    <label class="form-label">Email</label>
                                    <input class="form-control form-control-sm select-element" type="email"
                                        name="email" id="email" placeholder="Masukkan email" value="{{ $dataUser->email }}" required>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <label class="input-group-text" for="inputGroupSelect02">Role</label>
                                <select class="form-select" id="role" name="role">
                                    <option value="Admin" {{ $dataUser->role == 'Admin' ? 'selected' : '' }}>Admin</option>
                                    <option value="Camaba" {{ $dataUser->role == 'Camaba' ? 'selected' : '' }}>Camaba</option>
                                </select>
                            </div>
                    </div>
                </div>
                <div class="row justify-content-left">
                    <div class="col-8 text-left" style="margin-bottom: 10px; margin-left: 15px;">
                        <button class="btn btn-primary" type="button" id="save-button">Simpan</button>
                        <a href="{{route('user.list')}}" class="btn btn-secondary" style="margin-left: 10px;"><i
                                class="bx bx-x me-1"></i>Batal</a>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
    </div>
@endsection

@section('js-content')
<script>
    document.getElementById('save-button').addEventListener('click', function(event) {
        Swal.fire({
            title: 'Yakin ingin menyimpan?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, simpan!',
            cancelButtonText: 'Batal'
        }).then((result) => {
            if (result.isConfirmed) {
                document.getElementById('Form').submit();
            }
        });
    });
</script>
<script>
    document.getElementById('showPassword').addEventListener('click', function() {
        var passwordInput = document.getElementById('password');
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            this.textContent = 'Hide';
        } else {
            passwordInput.type = 'password';
            this.textContent = 'Show';
        }
    });
    </script>
@endsection
