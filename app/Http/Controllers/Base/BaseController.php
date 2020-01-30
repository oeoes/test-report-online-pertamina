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

    public function singleData($id, $type) {
        if($type == 'coq') {
            $push_query = CoqReport::where('product_id', $id)->first()->product;
        }else if($type == 'before') {
            $push_query = BeforeReport::where('product_id', $id)->first()->product;
        }else if($type == 'after') {
            $push_query = AfterReport::where('product_id', $id)->first()->product;
        }else {
            $push_query = DistributionReport::where('product_id', $id)->first()->product;
        }
        return $push_query;
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
