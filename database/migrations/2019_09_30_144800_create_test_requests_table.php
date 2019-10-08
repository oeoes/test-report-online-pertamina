<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('test_requests', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('urutan_surat');
            $table->string('no_surat');
            $table->string('produk');
            $table->string('asal_sample');
            $table->string('jenis_sample')->nullable();
            $table->string('pengambil_sample')->nullable();
            $table->date('tgl');
            $table->time('waktu');
            $table->dateTime('approved')->nullable();
            $table->string('approved_by')->nullable();
            $table->dateTime('accepted')->nullable();
            $table->string('accepted_by')->nullable();
            $table->dateTime('sampling')->nullable();
            $table->string('sampled_by')->nullable();
            $table->dateTime('arrived')->nullable();
            $table->string('arrived_by')->nullable();
            $table->dateTime('testing')->nullable();
            $table->string('tested_by')->nullable();
            $table->dateTime('released')->nullable();
            $table->string('released_by')->nullable();
            $table->enum('progress', ['waiting', 'accepted', 'sampling', 'arrived', 'testing', 'released']);
            $table->string('jenis_test');
            $table->string('type');
            $table->enum('status', ['pending', 'approved', 'refused']);
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
        Schema::dropIfExists('test_requests');
    }
}
