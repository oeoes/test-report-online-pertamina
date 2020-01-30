<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestPrice extends Model
{
    protected $fillable = ['parameter', 'metode', 'harga'];
}
