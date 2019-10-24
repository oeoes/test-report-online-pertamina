<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\CoqReport;
use App\MasterData;

class CoqReportController extends Controller
{
    public function store() {
        $data = MasterData::where('product_id', request('product_id'))->get();
        $result = request('result');

        foreach ($data as $k => $d) {
            CoqReport::create([
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

        return response()->json(['status' => true, 'message' => 'Coq stored']);
    }

    public function index() {
        $data  = DB::table('products')->join('coq_reports', 'coq_reports.product_id', '=', 'products.id')->select('products.id', 'products.product_name', DB::raw('DATE(coq_reports.created_at) as date'))->distinct()->orderBy('date', 'DESC')->get();        
        return $data;
    }

    public function showCoqDetail($id, $date) {
        $single_data = DB::table('products')
        ->join('coq_reports', 'coq_reports.product_id', '=', 'products.id')
        ->select('products.id', 'products.product_name', DB::raw('DATE(coq_reports.created_at) as date'))
        ->where('coq_reports.product_id', $id)
        ->where(DB::raw('DATE(coq_reports.created_at)'), $date)
        ->distinct()
        ->orderBy('date', 'DESC')
        ->get();

        $data = CoqReport::where('product_id', $id)->where(DB::raw('DATE(coq_reports.created_at)'), $date)->get();

        $values = [];

        foreach ($data as $d) {
            array_push($values, $d->value);
        }

        $coq = MasterData::where('product_id', $id)->get();
        return view('app.a3.report')->with(['data' => $coq, 'value' => $values, 'title' => $single_data, 'type' => 'coq']);
    }
}
