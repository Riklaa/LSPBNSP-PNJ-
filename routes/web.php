<?php

use App\Http\Controllers\CamabaController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PendaftaranController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('login');
});

Route::get('/login', [LoginController::class, 'ShowLogin'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('login');
Route::get('/logout', function (Request $request) {
    $loginController = new LoginController();
    return $loginController->logout($request, 'users');
})->name('logout');


Route::middleware(['admin'])->group(function () {
    //-- [Pendaftaran] -- \\
    Route::get('/pendaftaran/list', [PendaftaranController::class, 'PendaftaranShow'])->name('pendaftaran.list');
    Route::get('/pendaftaran/create', [PendaftaranController::class, 'PendaftaranShowCreate'])->name('pendaftaran.create');
    Route::get('/pendaftaran/edit', [PendaftaranController::class, 'PendaftaranShowEdit'])->name('pendaftaran.edit');
    Route::get('/pendaftaran/detail', [PendaftaranController::class, 'PendaftaranShowDetail'])->name('pendaftaran.detail');

    Route::post('pendaftaran/create/proses', [PendaftaranController::class, 'PendaftaranProsesCreate'])->name('pendaftaran.create.proses');
    Route::post('pendaftaran/edit/proses', [PendaftaranController::class, 'PendaftaranProsesEdit'])->name('pendaftaran.edit.proses');
    Route::get('pendaftaran/delete/proses', [PendaftaranController::class, 'PendaftaranProsesDelete'])->name('pendaftaran.delete.proses');

    //-- [USER] -- \\
    Route::get('/user/list', [UserController::class, 'UserShow'])->name('user.list');
    Route::get('/user/create', [UserController::class, 'UserShowCreate'])->name('user.create');
    Route::get('/user/edit', [UserController::class, 'UserShowEdit'])->name('user.edit');

    Route::post('user/create/proses', [UserController::class, 'UserProsesCreate'])->name('user.create.proses');
    Route::post('user/edit/proses', [UserController::class, 'UserProsesEdit'])->name('user.edit.proses');
    Route::get('user/delete/proses', [UserController::class, 'UserProsesDelete'])->name('user.delete.proses');

});

Route::middleware(['camaba'])->group(function () {
    //-- [Pendaftaran] -- \\
    Route::get('/pendaftaran/create', [PendaftaranController::class, 'PendaftaranShowCreate'])->name('pendaftaran.create');
    Route::post('pendaftaran/create/proses', [PendaftaranController::class, 'PendaftaranProsesCreate'])->name('pendaftaran.create.proses');
    Route::get('/kabupaten/{id_provinsi}', [PendaftaranController::class, 'getKabupatenByidProvinsi']);
    Route::get('/camaba/index', [CamabaController::class, 'index'])->name('camaba.index');

    Route::get('/camaba/detail', [CamabaController::class, 'PendaftaranShowDetail'])->name('camaba.detail');

});

