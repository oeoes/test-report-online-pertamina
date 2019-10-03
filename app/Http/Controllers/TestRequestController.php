<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestRequest;

class TestRequestController extends Controller
{
    public function index() {
        return view('app.a1.pengantar-sample');
    }

    public function approvedList() {
        $approved = TestRequest::where('status', 'approved')->get();
        return view('app.a1.approved', ['approved' => $approved]);
    }

    public function refusedList() {
        $refused = TestRequest::where('status', 'refused')->get();
        return view('app.a1.refused', ['refused' => $refused]);
    }

    public function delete($id) {
        $deleted = TestRequest::find($id);
        $deleted->delete();
        return back();
    }

    public function store() {
        TestRequest::create([
            'no_surat' => request('no_surat'),
            'produk' => request('produk'),
            'asal_sample' => request('asal_sample'),
            'jenis_sample' => request('jenis_sample'),
            'pengambil_sample' => request('pengambil_sample'),
            'tgl' => request('tgl'),
            'jenis_test' => request('jenis_test'),
            'status' => 'pending',
            'type' => request('type'),
        ]);

        return back()->with(['status' => true, 'message' => 'Pengantar sample berhasil dibuat.']);
    }
}
