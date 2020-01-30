<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Product;

class MasterData extends Model
{
    protected $fillable = ['parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'issuer', 'product_id', 'test_price_id'];

    public function product() {
        return $this->belongsTo(Product::class);
    }
}
