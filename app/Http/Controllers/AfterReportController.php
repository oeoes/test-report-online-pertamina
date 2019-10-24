<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\MasterData;
use App\AfterReport;

class AfterReportController extends Controller
{
    public function store() {
        $data = MasterData::where('product_id', request('product_id'))->get();
        $result = request('result');

        foreach ($data as $k => $d) {
            AfterReport::create([
                'product_id' => request('product_id'),
                'master_data_id' => $d->id,
                'value' => $result[$k],
                'asal_sample' => request('asal_sample'),
                'no_test' => request('no_test'),
                'jenis_pemeriksaan' => request('jenis_pemeriksaan'),
                'penandatangan' => request('penandatangan'),
                'distribution_detail' => request('distribution_detail')
            ]);
        }

        return response()->json(['status' => true, 'message' => 'After received stored']);
    }

    public function showAfterDetail($id, $date) {
        $single_data = DB::table('products')
        ->join('after_reports', 'after_reports.product_id', '=', 'products.id')
        ->select('products.id', 'products.product_name', DB::raw('DATE(after_reports.created_at) as date'))
        ->where('after_reports.product_id', $id)
        ->where(DB::raw('DATE(after_reports.created_at)'), $date)
        ->distinct()
        ->orderBy('date', 'DESC')
        ->get();

        $data = AfterReport::where('product_id', $id)->where(DB::raw('DATE(after_reports.created_at)'), $date)->get();

        $values = [];

        foreach ($data as $d) {
            array_push($values, $d->value);
        }

        $after = MasterData::where('product_id', $id)->get();
        return view('app.a3.report')->with(['data' => $after, 'value' => $values, 'title' => $single_data, 'type' => 'after']);
    }
}
