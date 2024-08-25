<?php

namespace App\Http\Controllers;

use App\Models\MAgama;
use App\Models\MKabupaten;
use App\Models\MPendaftaran;
use App\Models\MProvinsi;
use App\Models\MUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class PendaftaranController extends Controller
{
    public function PendaftaranShow (Request $request) {
        $dataPendaftaran = MPendaftaran::all();
        return view('pendaftaran.list', ['dataPendaftaran' =>$dataPendaftaran]);
    }
    public function PendaftaranShowCreate (Request $request) {
        $provinsi = MProvinsi::all();
        $provinsi2 = MProvinsi::all();
        $agama = MAgama::all();
        return view('pendaftaran.create', compact('provinsi', 'provinsi2', 'agama'));
    }
    public function PendaftaranShowEdit (Request $request) {
        $provinsi = MProvinsi::all();
        $provinsi2 = MProvinsi::all();
        $agama = MAgama::all();
        $form_id_pendaftaran = $request->query('id_pendaftaran', '');
        $dataPendaftaran = MPendaftaran::findOrFail($form_id_pendaftaran);
        return view('pendaftaran.edit', compact('provinsi', 'provinsi2', 'agama', 'dataPendaftaran'));
    }
    public function PendaftaranShowDetail (Request $request) {
        $provinsi = MProvinsi::all();
        $provinsi2 = MProvinsi::all();
        $agama = MAgama::all();
        $form_id_pendaftaran = $request->query('id_pendaftaran', '');
        $dataPendaftaran = MPendaftaran::findOrFail($form_id_pendaftaran);
        return view('pendaftaran.detail', compact('provinsi', 'provinsi2', 'agama', 'dataPendaftaran'));
    }
    public function PendaftaranProsesCreate (Request $request) {
        $form_nama = $request->post('nama');
        $form_alamat_ktp = $request->post('alamat_ktp');
        $form_alamat_lengkap = $request->post('alamat_lengkap');
        $form_provinsi = $request->post('provinsi');
        $form_kabupaten = $request->post('kabupaten');
        $form_kecamatan = $request->post('kecamatan');
        $form_notelp = $request->post('notelp');
        $form_nohp = $request->post('nohp');
        $form_email = $request->post('email');
        $form_kewarganegaraan = $request->post('kewarganegaraan');
        $form_detail = $request->post('detail');
        $form_tgl_lahir = $request->post('tgl_lahir');
        $form_tempat_lahir = $request->post('tempat_lahir');
        $form_provinsi_lahir = $request->post('provinsi_lahir');
        $form_kabupaten_lahir = $request->post('kabupaten_lahir');
        $form_luar_negeri = $request->post('luar_negeri');
        $form_jenis_kelamin = $request->post('jenis_kelamin');
        $form_ismenikah = $request->post('ismenikah');
        $form_agama = $request->post('agama');

        $tblPendaftaran = new MPendaftaran();
        $tblPendaftaran->nama = $form_nama;
        $tblPendaftaran->alamat_ktp = $form_alamat_ktp;
        $tblPendaftaran->alamat_lengkap = $form_alamat_lengkap;
        $tblPendaftaran->provinsi = $form_provinsi;
        $tblPendaftaran->kabupaten = $form_kabupaten;
        $tblPendaftaran->kecamatan = $form_kecamatan;
        $tblPendaftaran->notelp = $form_notelp;
        $tblPendaftaran->nohp = $form_nohp;
        $tblPendaftaran->email = $form_email;
        $tblPendaftaran->kewarganegaraan = $form_kewarganegaraan;
        $tblPendaftaran->detail = $form_detail;
        $tblPendaftaran->tgl_lahir = $form_tgl_lahir;
        $tblPendaftaran->tempat_lahir = $form_tempat_lahir;
        $tblPendaftaran->provinsi_lahir = $form_provinsi_lahir;
        $tblPendaftaran->kabupaten_lahir = $form_kabupaten_lahir;
        $tblPendaftaran->luar_negeri = $form_luar_negeri;
        $tblPendaftaran->jenis_kelamin = $form_jenis_kelamin;
        $tblPendaftaran->ismenikah = $form_ismenikah;
        $tblPendaftaran->agama = $form_agama;
        $user = Auth::guard('users')->user();
        $user->status_daftar = 1;
        $tblPendaftaran->id_user = $user->id_user;
        $tblPendaftaran->save();
        $user->save();

        Session::flash('alert-success', 'Berhasil Daftar');
        return redirect()->route('camaba.detail');
    }
    public function PendaftaranProsesEdit (Request $request) {
        $form_oldid = $request->post('oldid');
        $tblPendaftaran = MPendaftaran::findOrFail($form_oldid);

        $form_nama = $request->post('nama');
        $form_alamat_ktp = $request->post('alamat_ktp');
        $form_alamat_lengkap = $request->post('alamat_lengkap');
        $form_provinsi = $request->post('provinsi');
        $form_kabupaten = $request->post('kabupaten');
        $form_kecamatan = $request->post('kecamatan');
        $form_notelp = $request->post('notelp');
        $form_nohp = $request->post('nohp');
        $form_email = $request->post('email');
        $form_kewarganegaraan = $request->post('kewarganegaraan');
        $form_detail = $request->post('detail');
        $form_tgl_lahir = $request->post('tgl_lahir');
        $form_tempat_lahir = $request->post('tempat_lahir');
        $form_provinsi_lahir = $request->post('provinsi_lahir');
        $form_kabupaten_lahir = $request->post('kabupaten_lahir');
        $form_luar_negeri = $request->post('luar_negeri');
        $form_jenis_kelamin = $request->post('jenis_kelamin');
        $form_ismenikah = $request->post('ismenikah');
        $form_agama = $request->post('agama');

        $tblPendaftaran->nama = $form_nama;
        $tblPendaftaran->alamat_ktp = $form_alamat_ktp;
        $tblPendaftaran->alamat_lengkap = $form_alamat_lengkap;
        $tblPendaftaran->provinsi = $form_provinsi;
        $tblPendaftaran->kabupaten = $form_kabupaten;
        $tblPendaftaran->kecamatan = $form_kecamatan;
        $tblPendaftaran->notelp = $form_notelp;
        $tblPendaftaran->nohp = $form_nohp;
        $tblPendaftaran->email = $form_email;
        $tblPendaftaran->kewarganegaraan = $form_kewarganegaraan;
        $tblPendaftaran->detail = $form_detail;
        $tblPendaftaran->tgl_lahir = $form_tgl_lahir;
        $tblPendaftaran->tempat_lahir = $form_tempat_lahir;
        $tblPendaftaran->provinsi_lahir = $form_provinsi_lahir;
        $tblPendaftaran->kabupaten_lahir = $form_kabupaten_lahir;
        $tblPendaftaran->luar_negeri = $form_luar_negeri;
        $tblPendaftaran->jenis_kelamin = $form_jenis_kelamin;
        $tblPendaftaran->ismenikah = $form_ismenikah;
        $tblPendaftaran->agama = $form_agama;
        $tblPendaftaran->save();

        Session::flash('alert-success', 'Berhasil Edit Data');
        return redirect()->route('pendaftaran.list');
    }
    public function PendaftaranProsesDelete (Request $request) {
        $id_pendaftaran = $request->query('id_pendaftaran');
        // dd($id_pendaftaran);
        $tblPendaftaran = MPendaftaran::findOrFail($id_pendaftaran);
        $userId = $tblPendaftaran->id_user;
        // dd($userId);

        $tblPendaftaran->delete();
        $user = MUser::findOrFail($userId);
        $user->status_daftar = 0;
        $user->save();
        Session::flash('alert-success', 'Berhasil Hapus Data');
        return redirect()->route('pendaftaran.list');
    }

    public function getKabupatenByidProvinsi($id_provinsi)
    {
        // Ambil data kabupaten berdasarkan ID provinsi
        $kabupatens = MKabupaten::where('id_provinsi', $id_provinsi)->get();
        if ($kabupatens->isEmpty()) {
            return response()->json([], 404); // Atau tangani sesuai kebutuhan
        }
        return response()->json($kabupatens);
    }
}
