<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestReport extends Model
{
    protected $fillable = ['produk', 'tag', 'parameter', 'metode', 'unit', 'master', 'limit_min', 'limit_max', 'result', 'user_email', 'user_id'];
}