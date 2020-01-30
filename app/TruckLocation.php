<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TruckLocation extends Model
{
    protected $fillable = ['user_id', 'test_request_id', 'lat', 'lng', 'state'];
}
