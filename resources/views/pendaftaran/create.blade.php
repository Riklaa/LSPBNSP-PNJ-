@extends('super.master-layout')

@section('custom-css')
@endsection

@section('title', 'Tambah Alat Kesehatan')

@section('content')
    <div class="container-fluid">
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href=""><i class="bx bx-home-alt"></i></a></li>
                        <li class="breadcrumb-item" aria-current="page">
                            <a href="">home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Form Pendaftaran</li>
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
                            <h4 class="mb-0">Pendaftaran Calon Mahasiswa</h4>
                        </div>
                        <hr>
                        <form method="POST" action="{{ route('pendaftaran.create.proses') }}"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <span class="me-2">1.</span>
                                        <div class="flex-grow-1">
                                            <label for="keterangan">Nama Lengkap (sesuai ijasah disertai gelar)</label>
                                            <input class="form-control select-element" id="nama" type="text"
                                                name="nama" required></input>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-12 mb-3">
                                    <div class="d-flex">
                                        <span class="me-2">2.</span>
                                        <div class="flex-grow-1">
                                            <label for="keterangan">Alamat KTP</label>
                                            <textarea class="form-control select-element" id="alamat_ktp" name="alamat_ktp" required></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="d-flex">
                                        <span class="me-3">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label for="keterangan">Alamat Lengkap Saat Ini</label>
                                            <textarea class="form-control select-element" id="alamat_lengkap" name="alamat_lengkap" required></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-3">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Provinsi</label>
                                            <select class="form-control form-control-sm select-element" name="provinsi"
                                                id="provinsi1" required>
                                                <option value="">Pilih Provinsi</option>
                                                @foreach ($provinsi as $provinsi)
                                                    <option value="{{ $provinsi->id_provinsi }}">
                                                        {{ $provinsi->nama_provinsi }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Kabupaten</label>
                                            <select class="form-control form-control-sm select-element" name="kabupaten"
                                                id="kabupaten1" required>
                                                <option value="">Pilih Kabupaten</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Kecamatan</label>
                                            <input class="form-control form-control-sm select-element" type="text"
                                                name="kecamatan" id="kecamatan" placeholder="Masukkan Kecamatan" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-3">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">No Telp</label>
                                            <input class="form-control form-control-sm select-element" type="number"
                                                name="notelp" id="notelp" placeholder="Masukkan Type" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">No Hp</label>
                                            <input class="form-control form-control-sm select-element" type="number"
                                                name="nohp" id="nohp" placeholder="Masukkan Kecamatan" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Email</label>
                                            <input class="form-control form-control-sm select-element" type="email"
                                                name="email" id="email" placeholder="Masukkan Kecamatan" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-12 col-md-6 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">3.</span> <!-- Menambahkan nomor urut -->
                                        <div class="flex-grow-1">
                                            <label class="form-label">Kewarganegaraan</label>
                                            <select class="form-control form-control-sm select-element"
                                                name="kewarganegaraan" id="kewarganegaraan" required>
                                                <option value="">Pilih Kewarganegaraan</option>
                                                <option value="WNI Asli">WNI Asli</option>
                                                <option value="WNI Keturunan">WNI Keturunan</option>
                                                <option value="WNA">WNA</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6" id="wna-detail-container" style="display: none;">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <!-- Menambahkan span kosong untuk kesejajaran -->
                                        <div class="flex-grow-1">
                                            <label class="form-label">Negara (WNA)</label>
                                            <input class="form-control" id="wna_detail" name="detail"
                                                placeholder="Masukkan Negara WNA" required>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <span class="me-2">4.</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Tanggal Lahir Sesuai Ijazah</label>
                                            <input class="form-control" id="tgl_lahir" name="tgl_lahir"
                                                placeholder="Masukkan Detail Kewarganegaraan" type="date" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-12 mb-1">
                                    <div class="d-flex">
                                        <span class="me-2">5.</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Tempat Lahir Sesuai Ijazah</label>
                                            <input class="form-control" id="tempat_lahir" name="tempat_lahir"
                                                placeholder="Masukkan Detail Kewarganegaraan" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-12 col-md-4 mb-1">
                                    <div class="d-flex">
                                        <span class="me-3">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Provinsi</label>
                                            <select class="form-control form-control-sm select-element"
                                                name="provinsi_lahir" id="provinsi2" required>
                                                <option value="">Pilih Provinsi</option>
                                                @foreach ($provinsi2 as $provinsi)
                                                    <option value="{{ $provinsi->id_provinsi }}">
                                                        {{ $provinsi->nama_provinsi }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Kabupaten</label>
                                            <select class="form-control form-control-sm select-element"
                                                name="kabupaten_lahir" id="kabupaten2" required>
                                                <option value="">Pilih Kabupaten</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Negara
                                            </label>
                                            <input class="form-control" id="negara" name="luar_negeri"
                                                placeholder="Isi bila lahir diluar negeri">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <span class="me-2">6.</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Jenis Kelamin</label>
                                            <select class="form-control form-control-sm select-element"
                                                name="jenis_kelamin" id="jenis_kelamin" required>
                                                <option value="">Pilih Jenis Kelamin</option>
                                                <option value="Pria">Pria</option>
                                                <option value="Wanita">Wanita</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <span class="me-2">7.</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Status Menikah</label>
                                            <select class="form-control form-control-sm select-element" name="ismenikah"
                                                id="ismenikah" required>
                                                <option value="">Pilih Status</option>
                                                <option value="Belum Menikah">Belum Menikah</option>
                                                <option value="Menikah">Menikah</option>
                                                <option value="Lain-lain">Lain-lain (janda/duda)</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <span class="me-2">8.</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Agama</label>
                                            <select class="form-control form-control-sm select-element" name="agama"
                                                id="agama" required>
                                                <option value="">Pilih Agama</option>
                                                @foreach ($agama as $agama)
                                                    <option value="{{ $agama->nama_agama }}">{{ $agama->nama_agama }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-3">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Nilai 1
                                            </label>
                                            <input class="form-control" id="nilai1" name="nilai1"
                                                placeholder="form nilai 1">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Nilai 2
                                            </label>
                                            <input class="form-control" id="nilai2" name="nilai2"
                                                placeholder="form nilai 2">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Nilai 3
                                            </label>
                                            <input class="form-control" id="nilai3" name="nilai3"
                                                placeholder="form nilai 3">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <button class="btn btn-primary" type="button" id="save-button">Simpan</button>
                                    {{-- <a href="{{ route('pendaftaran.list') }}" class="btn btn-secondary"
                                        style="margin-left: 10px;"><i class="bx bx-x me-1"></i>Batal</a> --}}
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js-content')
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
    document.getElementById('save-button').addEventListener('click', function(event) {
        // Prevent form submission
        event.preventDefault();

        // Ambil elemen form
        var form = document.querySelector('form');

        // Ambil semua input yang diinginkan
        var nama = document.getElementById('nama').value.trim();
        var alamat_ktp = document.getElementById('alamat_ktp').value.trim();
        var alamat_lengkap = document.getElementById('alamat_lengkap').value.trim();
        var provinsi1 = document.getElementById('provinsi1').value.trim();
        var kabupaten1 = document.getElementById('kabupaten1').value.trim();
        var kecamatan = document.getElementById('kecamatan').value.trim();
        var notelp = document.getElementById('notelp').value.trim();
        var nohp = document.getElementById('nohp').value.trim();
        var email = document.getElementById('email').value.trim();
        var wna_detail = document.getElementById('wna_detail').value.trim();
        var kewarganegaraan = document.getElementById('kewarganegaraan').value.trim();
        var tgl_lahir = document.getElementById('tgl_lahir').value.trim();
        var tempat_lahir = document.getElementById('tempat_lahir').value.trim();
        var provinsi2 = document.getElementById('provinsi2').value.trim();
        var kabupaten2 = document.getElementById('kabupaten2').value.trim();
        var jenis_kelamin = document.getElementById('jenis_kelamin').value.trim();
        var ismenikah = document.getElementById('ismenikah').value.trim();
        var agama = document.getElementById('agama').value.trim();
        var nilai1 = document.getElementById('nilai1').value.trim();
        var nilai2 = document.getElementById('nilai2').value.trim();
        var nilai3 = document.getElementById('nilai3').value.trim();

        // Validasi simple untuk memeriksa apakah field kosong
        if (nama === "" || alamat_ktp === "" || alamat_lengkap === "" || provinsi1 === "" || kabupaten1 === "" ||
            kecamatan === "" || notelp === "" || nohp === "" || email === "" || kewarganegaraan === "" ||
            tgl_lahir === "" || tempat_lahir === "" || provinsi2 === "" || kabupaten2 === "" ||
            jenis_kelamin === "" || ismenikah === "" || agama === "" || nilai1 === "" || nilai2 === "" || nilai3 === "") {
            Swal.fire({
                icon: 'warning',
                title: 'Data tidak lengkap',
                text: 'Harap lengkapi semua field yang diperlukan!',
                confirmButtonText: 'OK'
            });
            return;
        }

        // Validasi untuk WNA, negara wajib diisi
        if (kewarganegaraan === "WNA" && wna_detail === "") {
            Swal.fire({
                icon: 'warning',
                title: 'Data tidak lengkap',
                text: 'Harap lengkapi negara untuk WNA!',
                confirmButtonText: 'OK'
            });
            return;
        }

        // Validasi untuk nomor telepon dan nomor HP harus berupa angka
        if (isNaN(notelp) || isNaN(nohp)) {
            Swal.fire({
                icon: 'error',
                title: 'Format Salah',
                text: 'Nomor Telepon dan Nomor HP harus berupa angka!',
                confirmButtonText: 'OK'
            });
            return;
        }

        // Validasi untuk email harus berupa email yang valid
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            Swal.fire({
                icon: 'error',
                title: 'Format Email Salah',
                text: 'Masukkan alamat email yang valid!',
                confirmButtonText: 'OK'
            });
            return;
        }

        // Jika semua validasi lolos, submit form
        form.submit();
    });
</script>

<script>
    function loadKabupaten(provinsiId, kabupatenSelectId) {
        var kabupatenSelect = document.getElementById(kabupatenSelectId);

        // Hapus opsi kabupaten yang sudah ada
        kabupatenSelect.innerHTML = '<option value="">Pilih Kabupaten</option>';

        if (provinsiId) {
            fetch('/kabupaten/' + provinsiId)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(data => {
                    data.forEach(function(kabupaten) {
                        var option = document.createElement('option');
                        option.value = kabupaten.id_kabupaten; // Menggunakan id_kabupaten
                        option.textContent = kabupaten.nama_kabupaten; // Menggunakan nama_kabupaten
                        kabupatenSelect.appendChild(option);
                    });
                })
                .catch(error => console.error('Error:', error));
        }
    }

    document.getElementById('provinsi1').addEventListener('change', function() {
        var provinsiId = this.value;
        console.log("ID Provinsi 1 yang dipilih:", provinsiId);
        loadKabupaten(provinsiId, 'kabupaten1');
    });

    document.getElementById('provinsi2').addEventListener('change', function() {
        var provinsiId = this.value;
        console.log("ID Provinsi 2 yang dipilih:", provinsiId);
        loadKabupaten(provinsiId, 'kabupaten2');
    });

    // JavaScript untuk menangani perubahan pada dropdown kewarganegaraan
    document.getElementById('kewarganegaraan').addEventListener('change', function() {
        var kewarganegaraanValue = this.value;
        var wnaDetailContainer = document.getElementById('wna-detail-container');

        if (kewarganegaraanValue === 'WNA') {
            wnaDetailContainer.style.display = 'block'; // Tampilkan input detail WNA
        } else {
            wnaDetailContainer.style.display = 'none'; // Sembunyikan input detail WNA
        }
    });
</script>

<script>
    let isValid = true;

    // Misalnya, mengumpulkan semua elemen input, select, dan textarea
    let allInputs = document.querySelectorAll('input, select, textarea');

    allInputs.forEach(function(element) {
        if (element.value === '') {
            isValid = false;
            return;
        }
    });
</script>
@endsection

