<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReleaseReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('release_reports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('flag');
            $table->string('jenis');
            $table->string('type'); // coq, before, after, penyaluran
            $table->string('asal');
            $table->string('no_test');
            $table->string('tgl_ambil');
            $table->string('tgl_terima');
            $table->string('tgl_test');
            $table->string('tgl_pemeriksaan');
            $table->string('jenis_pemeriksaan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('release_reports');
    }
}
