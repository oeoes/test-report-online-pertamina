<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\TestReport;
use App\SpesificReport;

class TestReportController extends Controller
{
    private $option = ['pertamax', 'pertamax turbo', 'pertalite', 'pertadex', 'premium', 'fame', 'solar', 'biosolar', 'dexlite'];

    public function index() {
        $master = TestReport::where('master', 'true')->latest()->get();
        return view('app.a3.master-data', ['master' => $master, 'option' => $this->option]);
    }

    // create master data
    public function process($id=null, $type=null) {
        if(empty($id) || !$type) {
            $master = TestReport::where('type', 'master')->get();
            return view('app.a3.master-data', ['master' => $master]);
        }

        $data = TestReport::find($id);
        return view('app.a3.migrate-data', ['data' => $data, 'type' => $type, 'option' => $this->option]);
    }

    public function store() {
        TestReport::create([
            'produk' => request('produk'), 
            'parameter' => request('parameter'), 
            'metode' => request('metode'), 
            'unit' => request('unit'), 
            'limit_min' => request('limit_min'), 
            'limit_max' => request('limit_max'), 
            'master' => 'true',
            'tag' => strtolower(auth()->user()->email.':'.request('produk').':'.\Carbon\Carbon::now()->format('Y-m-d')),
            'user_email' => auth()->user()->email, 
            'user_id' => auth()->user()->id
        ]);
        return back()->with(['status' => true, 'message' => 'Data berhasil ditambahkan.']);
    }

    // bundle to for grouping
    public function bundleRecord() {
        // change tatus master --> false
        $flag = \Str::random(24);
        // create flag
        DB::table('test_reports')->where('tag', request('tag'))->update(['master' => 'false', 'flag' => $flag]);

        $data = TestReport::where('flag', $flag)->first();
        SpesificReport::create([
            'produk' => $data->produk,
            'tag' => $data->tag,
            'flag' => $data->flag,
            'issuer' => $data->user_email
        ]);
        return back();
    }

    public function delete($id) {
        $report = TestReport::find($id);
        $report->delete();
        return back();
    }

    public function beforeDischarge() {
        $before  = DB::table('products')->join('before_reports', 'before_reports.product_id', '=', 'products.id')->select('products.id', 'products.product_name', DB::raw('DATE(before_reports.created_at) as date'))->distinct()->orderBy('date', 'DESC')->get();        
        
        return view('app.a3.before-discharge', ['before' => $before, 'type' => 'before']);
    }

    public function processTestReport() {
        TestReport::create([
            'produk' => request('produk'), 
            'parameter' => request('parameter'), 
            'metode' => request('metode'), 
            'type' => request('type'),
            'unit' => request('unit'), 
            'limit_min' => request('limit_min'), 
            'limit_max' => request('limit_max'), 
            'user_email' => request('user_email'), 
            'user_id' => request('user_id'),
            'result' => request('result')
        ]);
        return back();
    }

    public function afterReceived() {
        $after  = DB::table('products')->join('after_reports', 'after_reports.product_id', '=', 'products.id')->select('products.id', 'products.product_name', DB::raw('DATE(after_reports.created_at) as date'))->distinct()->orderBy('date', 'DESC')->get();        
        
        return view('app.a3.after-received', ['after' => $after, 'type' => 'after']);
    }

    public function coq() {
        $coq  = DB::table('products')->join('coq_reports', 'coq_reports.product_id', '=', 'products.id')->select('products.id', 'products.product_name', DB::raw('DATE(coq_reports.created_at) as date'))->distinct()->orderBy('date', 'DESC')->get();        
        
        return view('app.a3.coq', ['coq' => $coq, 'type' => 'coq']);
    }

    public function distribution() {
        $distribution  = DB::table('products')->join('distribution_reports', 'distribution_reports.product_id', '=', 'products.id')->select('products.id', 'products.product_name', DB::raw('DATE(distribution_reports.created_at) as date'))->distinct()->orderBy('date', 'DESC')->get();        
        
        return view('app.a3.distribution', ['distribution' => $distribution, 'type' => 'distribution']);
    }
}
