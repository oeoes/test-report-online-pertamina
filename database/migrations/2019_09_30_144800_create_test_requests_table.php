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
            $table->string('no_surat');
            $table->string('produk');
            $table->string('asal_sample');
            $table->string('jenis_sample')->nullable();
            $table->string('pengambil_sample')->nullable();
            $table->date('tgl');
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
