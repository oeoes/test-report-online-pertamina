<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestReport extends Model
{
    protected $fillable = ['produk', 'parameter', 'metode', 'unit', 'type', 'limit_min', 'limit_max', 'result', 'user_email', 'user_id'];
}
