<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\TestReport;
use App\SpesificReport;
use App\MasterData;
use App\BeforeReport;


class GraphicController extends Controller
{
    public function reportCategory($parameter_id = null, $from = null, $to = null, $product_id = null) {
        $data = DB::table('master_data')->select('limit_min', 'limit_max', 'parameter')->where('test_price_id', $parameter_id)->where('product_id', $product_id)->first();
        // pick random date for first load
        if(!$parameter_id) {
            $param = MasterData::latest()->distinct()->first();
            $product = $param->product;
            $coq = DB::table('coq_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->test_price_id)->first();
            $before = DB::table('before_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->test_price_id)->first();

            $after = DB::table('after_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->test_price_id)->first();

            $distribution = DB::table('distribution_reports')->where('product_id', $param->product_id)->where('master_data_id', $param->test_price_id)->first();
        }else{
            $coq = DB::table('master_data')->join('coq_reports', 'coq_reports.master_data_id', '=', 'master_data.id')
                ->where('coq_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('coq_reports.created_at', [$from, $to])
                ->orderBy('coq_reports.created_at')
                ->first();

            $before = DB::table('master_data')->join('before_reports', 'before_reports.master_data_id', '=', 'master_data.id')
                ->where('before_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('before_reports.created_at', [$from, $to])
                ->orderBy('before_reports.created_at')
                ->first();
            
            $after = DB::table('master_data')->join('after_reports', 'after_reports.master_data_id', '=', 'master_data.id')
                ->where('after_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('after_reports.created_at', [$from, $to])
                ->orderBy('after_reports.created_at')
                ->first();
            
            $distribution = DB::table('master_data')->join('distribution_reports', 'distribution_reports.master_data_id', '=', 'master_data.id')
                ->where('distribution_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('distribution_reports.created_at', [$from, $to])
                ->orderBy('distribution_reports.created_at')
                ->first();
        }

        return response()->json(['info' => $data, 'coq' => $coq, 'before' => $before, 'after' => $after, 'distribution' => $distribution]);
    }

    public function before($from, $to, $product_id, $parameter_id) {
        $before = DB::table('master_data')->join('before_reports', 'before_reports.master_data_id', '=', 'master_data.id')
                ->select(DB::raw('DATE(before_reports.created_at) as date'), 'before_reports.value', 'master_data.limit_min', 'master_data.limit_max')
                ->limit(10)
                ->where('before_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('before_reports.created_at', [$from, $to])
                ->orderBy('before_reports.created_at')
                ->get();
        return $before;
    }

    public function coq($from, $to, $product_id, $parameter_id) {
        $coq = DB::table('master_data')->join('coq_reports', 'coq_reports.master_data_id', '=', 'master_data.id')
                ->select(DB::raw('DATE(coq_reports.created_at) as date'), 'coq_reports.value', 'master_data.limit_min', 'master_data.limit_max')
                ->limit(10)
                ->where('coq_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('coq_reports.created_at', [$from, $to])
                ->orderBy('coq_reports.created_at')
                ->get();
        return $coq;
    }

    public function after($from, $to, $product_id, $parameter_id) {
        $after = DB::table('master_data')->join('after_reports', 'after_reports.master_data_id', '=', 'master_data.id')
                ->select(DB::raw('DATE(after_reports.created_at) as date'), 'after_reports.value', 'master_data.limit_min', 'master_data.limit_max')
                ->limit(10)
                ->where('after_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('after_reports.created_at', [$from, $to])
                ->orderBy('after_reports.created_at')
                ->get();
        return $after;
    }

    public function distribution($from, $to, $product_id, $parameter_id) {
        $distribution = DB::table('master_data')->join('distribution_reports', 'distribution_reports.master_data_id', '=', 'master_data.id')
                ->select(DB::raw('DATE(distribution_reports.created_at) as date'), 'distribution_reports.value', 'master_data.limit_min', 'master_data.limit_max')
                ->limit(10)
                ->where('distribution_reports.product_id', $product_id)
                ->where('master_data.test_price_id', $parameter_id)->whereBetween('distribution_reports.created_at', [$from, $to])
                ->orderBy('distribution_reports.created_at')
                ->get();
        return $distribution;
    }
}
