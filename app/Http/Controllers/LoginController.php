<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function showLogin(Request $request)
    {
        return view('login');
    }

    public function login(Request $request)
    {
        // Validasi data login
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);
        // Coba melakukan autentikasi
        if (Auth::guard('users')->attempt(['email' => $request->email, 'password' => $request->password])) {
            // Autentikasi berhasil
            $user = Auth::guard('users')->user();
            // $data = ['nama_user' => $user->nama_user];

            // dd($user);
            if ($user->role === 'Admin') {
                return redirect()->route('pendaftaran.list');
            } elseif ($user->role === 'Camaba') {
                if ($user->status_daftar == '0'){
                return redirect()->route('pendaftaran.create');
                } else {
                return redirect()->route('camaba.detail');
                }
            }
        } else {
            // Autentikasi gagal
            Session::flash('alert-error', 'Username Atau Password Salah!');
            return redirect('/login');
        }
    }

    public function logout(Request $request)
    {
        Auth::guard('users')->logout();
        $request->session()->regenerate();
        return redirect()->intended(route('login'));
    }
}
