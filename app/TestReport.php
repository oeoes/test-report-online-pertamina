<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestReport extends Model
{
    public $table = 'test_requests';
    protected $fillable = ['produk', 'tag', 'parameter', 'metode', 'unit', 'master', 'limit_min', 'limit_max', 'result', 'user_email', 'user_id'];
}
