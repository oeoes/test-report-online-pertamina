<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MasterData extends Model
{
    protected $fillable = ['parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'issuer', 'product_id'];
}
