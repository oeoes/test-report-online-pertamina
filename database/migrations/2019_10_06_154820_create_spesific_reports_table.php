<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSpesificReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('spesific_reports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('produk');
            $table->string('tag');
            $table->string('flag');
            $table->string('issuer');
            $table->string('type')->nullable();
            $table->tinyInteger('print_coq')->default(0);
            $table->tinyInteger('print_before')->default(0);
            $table->tinyInteger('print_after')->default(0);
            $table->tinyInteger('print_distribution')->default(0);
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
        Schema::dropIfExists('spesific_reports');
    }
}
