<?php

namespace App\Http\Controllers\Base;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\CoqReport;
use App\BeforeReport;
use App\AfterReport;
use App\DistributionReport;

class BaseController extends Controller
{
    public function data($id, $date, $type) {
        if($type == 'coq') {
            return CoqReport::where('product_id', $id)->where(DB::raw('DATE(coq_reports.created_at)'), $date)->get();
        }else if($type == 'before') {
            return BeforeReport::where('product_id', $id)->where(DB::raw('DATE(before_reports.created_at)'), $date)->get();
        }else if($type == 'after') {
            return AfterReport::where('product_id', $id)->where(DB::raw('DATE(after_reports.created_at)'), $date)->get();
        }else {
            return DistributionReport::where('product_id', $id)->where(DB::raw('DATE(distribution_reports.created_at)'), $date)->get();
        }
    }

    public function singleData($id, $date, $type) {
        $query = DB::table('products');
        if($type == 'coq') {
            $push_query = $query->join('coq_reports', 'coq_reports.product_id', '=', 'products.id')
                ->select('products.id', 'products.product_name', DB::raw('DATE(coq_reports.created_at) as date'))
                ->where('coq_reports.id', $id)
                ->where(DB::raw('DATE(coq_reports.created_at)'), $date);
        }else if($type == 'before') {
            $push_query = $query->join('before_reports', 'before_reports.product_id', '=', 'products.id')
                ->select('products.id', 'products.product_name', DB::raw('DATE(before_reports.created_at) as date'))
                ->where('before_reports.id', $id)
                ->where(DB::raw('DATE(before_reports.created_at)'), $date);
        }else if($type == 'after') {
            $push_query = $query->join('after_reports', 'after_reports.product_id', '=', 'products.id')
                ->select('products.id', 'products.product_name', DB::raw('DATE(after_reports.created_at) as date'))
                ->where('after_reports.id', $id)
                ->where(DB::raw('DATE(after_reports.created_at)'), $date);
        }else {
            $push_query = $query->join('distribution_reports', 'distribution_reports.product_id', '=', 'products.id')
                ->select('products.id', 'products.product_name', DB::raw('DATE(distribution_reports.created_at) as date'))
                ->where('distribution_reports.id', $id)
                ->where(DB::raw('DATE(distribution_reports.created_at)'), $date);
        }
        return $push_query->distinct()->orderBy('date', 'DESC')->get();
    }

    public function keterangan($id, $date, $type) {
        if($type == 'coq') {
            return CoqReport::where('product_id', $id)->where(DB::raw('DATE(coq_reports.created_at)'), $date)->first();
        }else if($type == 'before') {
            return BeforeReport::where('product_id', $id)->where(DB::raw('DATE(before_reports.created_at)'), $date)->first();
        }else if($type == 'after') {
            return AfterReport::where('product_id', $id)->where(DB::raw('DATE(after_reports.created_at)'), $date)->first();
        }else {
            return DistributionReport::where('product_id', $id)->where(DB::raw('DATE(distribution_reports.created_at)'), $date)->first();
        }
    }
}
