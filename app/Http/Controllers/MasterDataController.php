<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MasterData;
use App\Product;

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
        $new_data = MasterData::create([
            'product_id' => request('product_id'),
            'parameter' => request('parameter'),
            'metode' => request('metode'),
            'unit' => request('unit'),
            'limit_min' => request('limit_min'),
            'limit_max' => request('limit_max'),
            'issuer' => 'user pertamina',
        ]);
        return response()->json(['status' => true, 'message' => 'Master data added.', 'new_data' => $new_data]);
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
