@extends('super.master-layout')
@section('custom-css')
    <style>
        /* Container */
        .content-container {
            margin-top: 20px;
            /* Atur jarak atas */
            margin-bottom: 20px;
            /* Atur jarak bawah */
            padding-left: 15px;
            /* Atur jarak kiri */
            padding-right: 15px;
            /* Atur jarak kanan */
        }
    </style>
@endsection

@section('content')
    <div class="container-fluid mt-4">
        <div class="row mt-3">
            <div class="container-fluid">
                <div class="row mt-10">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <h4 class="mb-0">List Pendaftaran</h4>
                                </div>
                                <hr />
                                <div class="table-responsive">
                                    <!-- <div class="my-buttons"></div> -->
                                    <br>
                                    <table id="table-utama" class="table table-lg table-striped table-bordered table-hover"
                                        style="width:100%">
                                        <thead>
                                            <tr>
                                                {{-- <th>No</th> --}}
                                                <th>AKSI</th>
                                                <th>Nama Lengkap</th>
                                                <th>EMAIL</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            @foreach ($dataPendaftaran as $nomor => $value)
                                                <tr>
                                                    <td>
                                                        <a class="btn btn-warning btn-sm m-1"
                                                            href="{{ route('pendaftaran.edit', ['id_pendaftaran' => $value['id_pendaftaran']]) }}"><i
                                                                class="bx bx-edit"></i></a>
                                                        <a class="btn btn-primary btn-sm m-1"
                                                            href="{{ route('pendaftaran.detail', ['id_pendaftaran' => $value['id_pendaftaran']]) }}"><i
                                                                class="bx bx-detail"></i></a>
                                                        <a class="btn btn-danger btn-sm m-1"
                                                            href="{{ route('pendaftaran.delete.proses', ['id_pendaftaran' => $value['id_pendaftaran']]) }}"
                                                            onclick="showConfirmButton(event, '{{ route('pendaftaran.delete.proses', ['id_pendaftaran' => $value['id_pendaftaran']]) }}')">
                                                            <i class="bx bx-trash"></i>
                                                        </a>
                                                    </td>
                                                    <td>{{ $value['nama'] }}</td>
                                                    <td>{{ $value['email'] }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    @endsection

    @section('js-content')
        <script>
            function showConfirmButton(event, deleteUrl) {
                event.preventDefault(); // Prevent the default link action
                Swal.fire({
                    title: 'Apakah anda yakin ingin menghapus data ini?',
                    icon: "warning",
                    showCancelButton: true,
                    cancelButtonText: "Tidak",
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Ya"
                }).then((result) => {
                    if (result.isConfirmed) {
                        // If the user confirms, redirect to the delete URL
                        window.location.href = deleteUrl;
                    }
                });
            }
        </script>
        <script>
            $(document).ready(function() {

                // Initialize the DataTable
                var table = $('#table-utama').DataTable({
                    dom: '<lf<t>ip>',
                    buttons: [
                        'copy',
                        {
                            extend: 'excelHtml5',
                            title: 'Dharma Nugraha - Daftar Pengguna',
                            exportOptions: {
                            columns: [1, 2, 3, 4, 6]
                        }
                        },
                        'colvis'
                    ],
                    scrollX: true,
                    order: [2, 'asc']
                });

                table.buttons().container()
                    .appendTo($('.my-buttons'));
            });
        </script>
    @endsection
