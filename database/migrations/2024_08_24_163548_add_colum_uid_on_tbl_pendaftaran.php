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
        Schema::table('tbl_pendaftaran', function (Blueprint $table) {
            $table->dropColumn('luar_negri');
            $table->string('luar_negeri')->after('provinsi_lahir')->nullable();
            $table->uuid('uid');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
