<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\TestReport;
use App\SpesificReport;
use App\MasterData;


class GraphicController extends Controller
{
    public function reportCategory($parameter = null, $date = null) {
        // pick random date for first load
        if(!$parameter) {
            $param = MasterData::latest()->distinct()->first();
            $coq = DB::table('coq_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->first();
            $before = DB::table('before_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->first();

            $after = DB::table('after_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->first();

            $distribution = DB::table('distribution_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->first();
        }else{
            $param = MasterData::where('parameter', $parameter)->latest()->first();
            $coq = DB::table('coq_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->where(DB::raw('DATE(created_at)'), $date)->first();

            $before = DB::table('before_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->where(DB::raw('DATE(created_at)', $date))->first();

            $after = DB::table('after_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->where(DB::raw('DATE(created_at)', $date))->first();

            $distribution = DB::table('distribution_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->id)->where(DB::raw('DATE(created_at)', $date))->first();
        }

        return response()->json(['data' => $param, 'coq' => $coq, 'before' => $before, 'after' => $after, 'distribution' => $distribution]);
    }

    public function before($from, $to) {
        $before = DB::table('test_reports')->select('before_value as before', 'created_at as date', 'parameter')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($before);
    }

    public function coq($from, $to) {
        $coq = DB::table('test_reports')->select('coq_value as coq', 'created_at as date', 'parameter')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($coq);
    }

    public function after($from, $to) {
        $after = DB::table('test_reports')->select('after_value as after', 'created_at as date', 'parameter')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($after);
    }

    public function distribution($from, $to) {
        $distribution = DB::table('test_reports')->select('distribution_value as distribution', 'created_at as date', 'parameter')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($distribution);
    }
}
