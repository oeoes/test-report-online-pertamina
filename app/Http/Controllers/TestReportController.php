<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestReport;

class TestReportController extends Controller
{
    private $option = ['pertamax', 'pertamax turbo', 'pertalite', 'premium'];
    public function index() {
        $master = TestReport::where('type', 'master')->get();
        return view('app.a3.master-data', ['master' => $master, 'option' => $this->option]);
    }

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
            'type' => 'master',
            'user_email' => request('user_email'), 
            'user_id' => request('user_id')
        ]);
        return back()->with(['status' => true, 'message' => 'Data berhasil ditambahkan.']);
    }

    public function delete($id) {
        $report = TestReport::find($id);
        $report->delete();
        return back();
    }

    public function beforeDischarge() {
        $before = TestReport::where('type', 'before')->get();
        return view('app.a3.before-discharge', ['before' => $before]);
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
        $after = TestReport::where('type', 'after')->get();
        return view('app.a3.after-received', ['after' => $after]);
    }

    public function coq() {
        $coq = TestReport::where('type', 'coq')->get();
        return view('app.a3.coq', ['coq' => $coq]);
    }

    public function distribution() {
        $distribution = TestReport::where('type', 'distribution')->get();
        return view('app.a3.distribution', ['distribution' => $distribution]);
    }
}
