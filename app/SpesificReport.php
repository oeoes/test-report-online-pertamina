<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SpesificReport extends Model
{
    protected $fillable = ['produk', 'tag', 'flag', 'issuer'];
}
