<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BeforeReport extends Model
{
    protected $fillable = ['product_id', 'master_data_id', 'asal_sample', 'value', 'no_test', 'jenis_pemeriksaan', 'penandatangan', 'distribution_detail'];
}
