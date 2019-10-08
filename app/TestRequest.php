<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestRequest extends Model
{
    protected $fillable = ['no_surat', 'urutan_surat', 'produk', 'asal_sample', 'jenis_sample', 'pengambil_sample', 'tgl', 'waktu', 'progress', 'status', 'jenis_test', 'type'];
}
