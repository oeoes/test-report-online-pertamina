<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestReport;
use App\SpesificReport;
use Illuminate\Support\Facades\DB;

class GraphicController extends Controller
{
    public function reportCategory($flag_param = null) {
        // pick random flag for first load
        if(!$flag_param) {
            $flag = SpesificReport::latest()->first();
        }else{
            $flag = SpesificReport::where('flag', $flag_param)->latest()->first();
        }
        

        $data = DB::table('test_reports')->select('parameter', 'coq_value as coq', 'before_value as before', 'after_value as after', 'distribution_value as distribution')->where('flag', $flag->flag)->get();

        $before = DB::table('test_reports')->select('before_value as before', 'created_at as date')->whereBetween('created_at', [\Carbon\Carbon::now()->subDays(10), \Carbon\Carbon::now()])->get();

        $coq = DB::table('test_reports')->select('coq_value as coq', 'created_at as date')->whereBetween('created_at', [\Carbon\Carbon::now()->subDays(10), \Carbon\Carbon::now()])->get();

        $after = DB::table('test_reports')->select('after_value as after', 'created_at as date')->whereBetween('created_at', [\Carbon\Carbon::now()->subDays(10), \Carbon\Carbon::now()])->get();

        $distribution = DB::table('test_reports')->select('distribution_value as distribution', 'created_at as date')->whereBetween('created_at', [\Carbon\Carbon::now()->subDays(10), \Carbon\Carbon::now()])->get();

        return response()->json(['data' => $data, 'info' => $flag, 'coq' => $coq, 'before' => $before, 'after' => $after, 'distribution' => $distribution]);
    }

    public function before($from, $to) {
        $before = DB::table('test_reports')->select('before_value as before', 'created_at as date')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($before);
    }

    public function coq($from, $to) {
        $coq = DB::table('test_reports')->select('coq_value as coq', 'created_at as date')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($coq);
    }

    public function after($from, $to) {
        $after = DB::table('test_reports')->select('after_value as after', 'created_at as date')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($after);
    }

    public function distribution($from, $to) {
        $distribution = DB::table('test_reports')->select('distribution_value as distribution', 'created_at as date')->whereBetween('created_at', [$from, $to])->get();
        return response()->json($distribution);
    }
}
