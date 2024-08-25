<?php

namespace App\Http\Controllers;

use App\Models\MUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    public function UserShow(Request $request)
    {
        $dataUser = MUser::all();
        // dd($dataUser);
        return view('user.list', ['dataUser' =>$dataUser]);
    }

    public function UserShowCreate(Request $request)
    {
        return view('user.create');
    }

    public function UserShowEdit(Request $request)
    {
        $form_id_user = $request->query('id_user', '');
        $dataUser = MUser::findOrFail($form_id_user);
        return view('user.edit', ['dataUser' =>$dataUser]);
    }

    public function UserProsesCreate (Request $request)
    {
        $form_nama = $request->post('nama');
        $form_email = $request->post('email');
        $hashedPassword = bcrypt(123);
        $form_role = $request->post('role');

        $tblUser = new MUser();
        $tblUser->nama = $form_nama;
        $tblUser->email = $form_email;
        $tblUser->password = $hashedPassword;
        $tblUser->role = $form_role;
        $tblUser->save();

        Session::flash('alert-success', 'Berhasil Menambahkan Data');
        return redirect()->route('user.list');
    }
    public function UserProsesEdit (Request $request)
    {
        $form_oldid = $request->post('oldid');
        $tblUser = MUser::findOrFail($form_oldid);

        $form_nama = $request->post('nama');
        $form_email = $request->post('email');
        $form_role = $request->post('role');

        $tblUser->nama = $form_nama;
        $tblUser->email = $form_email;
        $tblUser->role = $form_role;
        $tblUser->save();

        Session::flash('alert-success', 'Berhasil Edit Data');
        return redirect()->route('user.list');

    }
    public function UserProsesDelete (Request $request)
    {
        $form_oldid = $request->query('id_user');
        $tblUser = MUser::findOrFail($form_oldid);

        $tblUser->delete();
        Session::flash('alert-success', 'Berhasil Hapus Data');
        return redirect()->route('user.list');

    }
}
