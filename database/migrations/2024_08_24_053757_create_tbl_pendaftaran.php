<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tbl_pendaftaran', function (Blueprint $table) {
            $table->id('id_pendaftaran');
            $table->string('nama_lengkap')->nullable();
            $table->string('alamat_ktp')->nullable();
            $table->string('alamat_lengkap')->nullable();
            $table->string('kecamatan')->nullable();
            $table->string('kabupaten')->nullable();
            $table->string('provinsi')->nullable();
            $table->integer('notelp')->nullable();
            $table->integer('nohp')->nullable();
            $table->string('email')->nullable();
            $table->string('kewarganegaraan')->nullable();
            $table->string('detail')->nullable();
            $table->string('tgl_lahir')->nullable();
            $table->string('tempat_lahir')->nullable();
            $table->string('kabupaten_lahir')->nullable();
            $table->string('provinsi_lahir')->nullable();
            $table->string('luar_negri')->nullable();
            $table->string('jenis_kelamin')->nullable();
            $table->string('ismenikah')->nullable();
            $table->string('agama')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_pendaftaran');
    }
};
