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
                            <h4 class="mb-0">Edit Data Pendaftaran</h4>
                        </div>
                        <hr>
                        <form method="POST" action="{{ route('pendaftaran.edit.proses') }}" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" id="oldid" name="oldid"
                                value="{{ $dataPendaftaran->id_pendaftaran }}">
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <span class="me-2">1.</span>
                                        <div class="flex-grow-1">
                                            <label for="keterangan">Nama Lengkap (sesuai ijasah disertai gelar)</label>
                                            <input class="form-control select-element" id="nama" type="text"
                                                name="nama" value="{{ $dataPendaftaran->nama }}" required></input>
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
                                            <textarea class="form-control select-element" id="alamat_ktp" name="alamat_ktp" required>{{ $dataPendaftaran->alamat_ktp }}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="d-flex">
                                        <span class="me-3">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label for="keterangan">Alamat Lengkap Saat Ini</label>
                                            <textarea class="form-control select-element" id="alamat_lengkap" name="alamat_lengkap" required>{{ $dataPendaftaran->alamat_lengkap }}</textarea>
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
                                                @foreach ($provinsi as $provinsiItem)
                                                    <option value="{{ $provinsiItem->id_provinsi }}"
                                                        {{ $dataPendaftaran->provinsi == $provinsiItem->id_provinsi ? 'selected' : '' }}>
                                                        {{ $provinsiItem->nama_provinsi }}
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
                                            <select class="form-control form-control-sm select-element" name="kabupaten"
                                                id="kabupaten1" required>
                                                <option value="{{ $dataPendaftaran->kabupaten }}">
                                                    {{ $dataPendaftaran->kabupaten }}</option>
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
                                                name="kecamatan" id="kecamatan" placeholder="Masukkan Kecamatan"
                                                value="{{ $dataPendaftaran->kecamatan }}">
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
                                                name="notelp" id="notelp" placeholder="Masukkan Type"
                                                value="{{ $dataPendaftaran->notelp }}" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">No Hp</label>
                                            <input class="form-control form-control-sm select-element" type="number"
                                                name="nohp" id="nohp" placeholder="Masukkan Kecamatan"
                                                value="{{ $dataPendaftaran->nohp }}" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4 mb-2">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <div class="flex-grow-1">
                                            <label class="form-label">Email</label>
                                            <input class="form-control form-control-sm select-element" type="email"
                                                name="email" id="email" placeholder="Masukkan Kecamatan"
                                                value="{{ $dataPendaftaran->email }}" required>
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
                                                <option value="WNI Asli"
                                                    {{ $dataPendaftaran->kewarganegaraan == 'WNI Asli' ? 'selected' : '' }}>
                                                    WNI Asli</option>
                                                <option value="WNI Keturunan"
                                                    {{ $dataPendaftaran->kewarganegaraan == 'WNI Keturunan' ? 'selected' : '' }}>
                                                    WNI Keturunan</option>
                                                <option value="WNA"
                                                    {{ $dataPendaftaran->kewarganegaraan == 'WNA' ? 'selected' : '' }}>WNA
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6" id="wna-detail-container" style="display: none">
                                    <div class="d-flex">
                                        <span class="me-2">&nbsp;</span>
                                        <!-- Menambahkan span kosong untuk kesejajaran -->
                                        <div class="flex-grow-1">
                                            <label class="form-label">Negara (WNA)</label>
                                            <input class="form-control" id="wna_detail" name="detail"
                                                placeholder="Masukkan Negara WNA" value="{{ $dataPendaftaran->detail }}"
                                                {{ $dataPendaftaran->kewarganegaraan === 'WNA' ? '' : 'disabled' }}
                                                required>
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
                                                placeholder="Masukkan Detail Kewarganegaraan" type="date"
                                                value="{{ $dataPendaftaran->tgl_lahir }}" required>
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
                                                placeholder="Masukkan Detail Kewarganegaraan"
                                                value="{{ $dataPendaftaran->tempat_lahir }}" required>
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
                                                    <option value="{{ $provinsi->id_provinsi }}"
                                                        {{ $dataPendaftaran->provinsi_lahir == $provinsi->id_provinsi ? 'selected' : '' }}>
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
                                                <option value="{{ $dataPendaftaran->kabupaten_lahir }}">
                                                    {{ $dataPendaftaran->kabupaten_lahir }}</option>
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
                                                placeholder="Isi bila lahir diluar negeri"
                                                value="{{ $dataPendaftaran->luar_negeri }}">
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
                                                <option value="Pria"
                                                    {{ $dataPendaftaran->jenis_kelamin == 'Pria' ? 'selected' : '' }}>Pria
                                                </option>
                                                <option value="Wanita"
                                                    {{ $dataPendaftaran->jenis_kelamin == 'Wanita' ? 'selected' : '' }}>
                                                    Wanita</option>
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
                                                <option value="Belum Menikah"
                                                    {{ $dataPendaftaran->ismenikah == 'Belum Menikah' ? 'selected' : '' }}>
                                                    Belum Menikah</option>
                                                <option value="Menikah"
                                                    {{ $dataPendaftaran->ismenikah == 'Menikah' ? 'selected' : '' }}>
                                                    Menikah</option>
                                                <option value="Lain-lain"
                                                    {{ $dataPendaftaran->ismenikah == 'Lain-lain' ? 'selected' : '' }}>
                                                    Lain-lain (janda/duda)</option>
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
                                                @foreach ($agama as $agamaSelected)
                                                    <option value="{{ $agamaSelected->nama_agama }}"
                                                        {{ $dataPendaftaran->agama == $agamaSelected->nama_agama ? 'selected' : '' }}>
                                                        {{ $agamaSelected->nama_agama }}
                                                    </option>
                                                @endforeach
                                                {{-- @foreach ($provinsi2 as $provinsi)
                                                <option value="{{ $provinsi->id_provinsi }}"
                                                    {{ $dataPendaftaran->provinsi_lahir == $provinsi->id_provinsi ? 'selected' : '' }}>
                                                    {{ $provinsi->nama_provinsi }}
                                                </option>
                                            @endforeach --}}
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <button class="btn btn-primary" type="submit" id="save-button">Simpan</button>
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
                            option.value = kabupaten.nama_kabupaten; // Menggunakan id_kabupaten
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

        document.addEventListener('DOMContentLoaded', function() {
    var kewarganegaraanDropdown = document.getElementById('kewarganegaraan');
    var wnaDetailContainer = document.getElementById('wna-detail-container');
    var wnaDetailInput = document.getElementById('wna_detail');

    // Fungsi untuk mengupdate status detail WNA
    function updateWnaDetailStatus() {
        var kewarganegaraanValue = kewarganegaraanDropdown.value;

        if (kewarganegaraanValue === 'WNA') {
            wnaDetailContainer.style.display = 'block'; // Tampilkan input detail WNA
            wnaDetailInput.removeAttribute('disabled'); // Aktifkan input detail WNA
        } else {
            wnaDetailContainer.style.display = 'none'; // Sembunyikan input detail WNA
            wnaDetailInput.setAttribute('disabled', 'disabled'); // Nonaktifkan input detail WNA
        }
    }

    // Jalankan fungsi saat halaman dimuat
    updateWnaDetailStatus();

    // Tambahkan event listener untuk perubahan dropdown
    kewarganegaraanDropdown.addEventListener('change', updateWnaDetailStatus);
});
    </script>
@endsection
