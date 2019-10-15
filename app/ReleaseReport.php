<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ReleaseReport extends Model
{
    protected $fillable = ['flag', 'jenis', 'type', 'asal', 'no_test', 'tgl_ambil', 'tgl_terima', 'tgl_test', 'tgl_pemeriksaan', 'jenis_pemeriksaan'];
}
