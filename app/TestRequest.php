<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestRequest extends Model
{
    protected $fillable = ['no_surat', 'produk', 'asal_sample', 'jenis_sample', 'pengambil_sample', 'tgl', 'jenis_test', 'type'];
}
