<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\CoqReport;

class Product extends Model
{
    protected $fillable = ['product_name'];
    
    public function coq() {
        return $this->hasMany(CoqReport::class);
    }
}
