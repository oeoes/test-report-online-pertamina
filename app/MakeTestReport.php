<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MakeTestReport extends Model
{
    protected $fillable = ['product_id', 'master_data_id', 'asal_sample', 'no_test', 'jenis_pemeriksaan', 'penandatangan'];
}
