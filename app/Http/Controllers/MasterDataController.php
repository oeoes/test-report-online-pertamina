<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MasterData;
use App\Product;
use App\TestPrice;

class MasterDataController extends Controller
{
    public function index() {
        $product = Product::first();
        $master_data = MasterData::where('product_id', $product->id)->get();
        return response()->json([
            'status' => true,
            'message' => 'list of data',
            'data' => $master_data,
            'product_id' => $product->id
        ]);
    }

    public function store() {
        if(request('email') != NULL) {
            $email = request('email');
        }else{
            $email = "User Pertamina";
        }
        $parameter = TestPrice::find(request('test_price_id'));
        $new_data = MasterData::create([
            'product_id' => request('product_id'),
            'test_price_id' => request('test_price_id'),
            'parameter' => $parameter->parameter,
            'metode' => request('metode'),
            'unit' => request('unit'),
            'limit_min' => request('limit_min'),
            'limit_max' => request('limit_max'),
            'issuer' => $email,
        ]);
        return response()->json(['status' => true, 'message' => 'Master data added.', 'new_data' => $new_data, 'user' => auth()->user()]);
    }

    public function destroy($id) {
        $data = MasterData::find($id);
        $data->delete();
    }

    public function show($id) {
        $data = MasterData::where('product_id', $id)->get();
        return response()->json([
            'status' => true,
            'message' => 'show data',
            'data' => $data
        ]);
    }

    public function update($id) {
        $data = MasterData::find($id);
        $data->parameter = request('parameter');
        $data->metode = request('metode');
        $data->unit = request('unit');
        $data->limit_min = request('limit_min');
        $data->limit_max = request('limit_max');
        $data->save();

        return MasterData::where('product_id', $data->product_id)->get();
    }
}
