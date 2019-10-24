<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMakeTestReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('make_test_reports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('product_id');
            $table->unsignedBigInteger('master_data_id');
            $table->string('coq')->nullable();
            $table->string('before')->nullable();
            $table->string('after')->nullable();
            $table->string('distribution')->nullable();
            $table->string('asal_sample');
            $table->string('no_test');
            $table->string('jenis_pemeriksaan');
            $table->string('penandatangan');
            $table->timestamps();

            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('master_data_id')->references('id')->on('master_data')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('make_test_reports');
    }
}
