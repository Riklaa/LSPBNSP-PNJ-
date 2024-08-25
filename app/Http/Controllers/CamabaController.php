<?php

namespace App\Http\Controllers;

use App\Models\MPendaftaran;
use App\Models\MProvinsi;
use App\Models\MAgama;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CamabaController extends Controller
{
    public function index(Request $request) {
        return view('camaba.index');
    }

    public function PendaftaranShowDetail(Request $request) {
        $user = Auth::guard('users')->user();
        $userId = $user->id_user;
        $provinsi = MProvinsi::all();
        $provinsi2 = MProvinsi::all();
        $agama = MAgama::all();
        $dataPendaftaran = MPendaftaran::where('id_user', $userId)->first();

        // Pastikan tidak ada karakter non-printable di sini
        return view('camaba.detail', compact('dataPendaftaran', 'provinsi', 'provinsi2', 'agama'));
    }
}
