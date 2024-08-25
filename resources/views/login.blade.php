<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>PMB Ujikom 2024</title>

    <!--favicon-->
    <link rel="icon" href="assets/images/logoRSDN.png" type="image/png" />
    <!-- loader-->
    <link href="assets/css/pace.min.css" rel="stylesheet" />
    <script src="assets/js/pace.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <!-- Icons CSS -->
    <link rel="stylesheet" href="assets/css/icons.css" />
    <!-- App CSS -->
    <link rel="stylesheet" href="assets/css/app.css" />

    <style>
        body {
        position: relative;
        width: 100%;
        height: 100vh; /* Sesuaikan tinggi sesuai kebutuhan */
        background-color: #008080; /* Warna teal hijau */
        }

        .wrapper {
            min-height: 100vh;
        }
    </style>
</head>

<body>
    <!-- wrapper -->
    <div class="wrapper">
        <div class="authentication-forgot d-flex align-items-center justify-content-center">
            <div class="card shadow-lg forgot-box" style="border-radius: 10px;">
                <div class="card-body p-md-5">
                    <div class="text-center">
                        <img src="assets/images/pnj.png" width="190" alt="" />
                    </div>
                    <h3 class="mt-3 font-weight-bold text-center">Web PMB Ujikom 2024</h3>
                    <h5 class="mt-3 font-weight-bold text-center">Silahkan Log In</h5>
                    <form action="{{ route('login') }}" method="POST">
    @csrf
    <div class="form-group mt-4">
        <label for="email" class="mb-2">Email</label> <!-- Margin-bottom menggunakan mb-2 -->
        <input type="text" class="form-control form-control-lg radius-20"
            placeholder="Masukkan Email" id="email" name="email" style="font-size: 15px;"/>
    </div>
    <div class="form-group mt-4 mb-3">
        <label for="password" class="mb-2">Password</label> <!-- Margin-bottom menggunakan mb-2 -->
        <input type="password" class="form-control form-control-lg radius-20"
            placeholder="Masukkan Password" id="password" name="password" style="font-size: 15px;"/>
    </div>
    <!-- {{-- <div class="form-group col text-center"> <a href="{{ route('forgetpw') }}"><i
            class='bx bxs-key me-1'></i>Lupa Password?</a>
    </div> --}} -->
    <div class="text-center">
        <button type="submit"
        class="btn btn-primary btn-lg btn-block radius-20 mt-3"
        style="width: 100%; font-size: 18px; background-color: ">Login</button>

    </div>
</form>

                </div>
            </div>
        </div>
    </div>
    <!-- end wrapper -->


</body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
{{-- <script>
    function showConfirmation() {
        Swal.fire({
            title: 'Apakah anda yakin akan menyimpan data ini?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: 'Simpan',
            cancelButtonText: 'Batal',
        }).then((result) => {
            if (result.isConfirmed) {
                // If the user confirms, you can submit the form or trigger the desired action
                document.querySelector('form').submit(); // This submits the form
            }
        });
    } --}}
</script>


@if (Session::has('alert-success'))
    <script>
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        });

        Toast.fire({
            icon: 'success',
            title: '{{ Session::get('alert-success') }}'
        });
    </script>
@endif
@if (Session::has('alert-error'))
    <script>
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        });

        Toast.fire({
            icon: 'error',
            title: '{{ Session::get('alert-error') }}'
        });
    </script>
@endif

</html>
