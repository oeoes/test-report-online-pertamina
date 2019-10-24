<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    public function index() {
        $product = Product::all();
        return $product;
    }

    public function destroy($id) {
        $product = Product::find($id);
        $product->delete();
        return response()->json(['status' => true, 'message' => 'Product deleted.']);
    }

    public function store() {
        $new = Product::create([
            'product_name' => request('product_name')
        ]);
        return response()->json(['status' => true, 'message' => 'Product added.', 'new' => $new]);
    }

    public function create() {
        return view('app.a3.add-product');
    }
}
