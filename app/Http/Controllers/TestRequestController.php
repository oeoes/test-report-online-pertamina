<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestRequest;

class TestRequestController extends Controller
{
    public function index() {
        return view('app.a1.pengantar-sample', [ 'user' => auth()->user()->email]);
    }

    public function formatNomorSurat($no_awal, $sampler) {
        $no_str = (string) $no_awal;
        $no = '';
        if(strlen($no_str) == 3) {
            $no = '0'.$no_str;
        }else if(strlen($no_str) == 2) {
            $no = '00'.$no_str;
        }else if(strlen($no_str) == 1){
            $no = '000'.$no_str;
        }else{
            $no = $no_str;
        }

        return $no.'/'.$sampler.'/IX/'.\Carbon\Carbon::now()->format('Y');
    }

    public function approvedList() {
        $approved = TestRequest::where('status', 'approved')->paginate(15);
        return view('app.a1.approved', ['approved' => $approved]);
    }

    public function refusedList() {
        $refused = TestRequest::where('status', 'refused')->paginate(15);
        return view('app.a1.refused', ['refused' => $refused]);
    }

    public function delete($id) {
        $deleted = TestRequest::find($id);
        $deleted->delete();
        return back();
    }

    public function store() {
        $data = TestRequest::orderBy('no_surat', 'DESC')->latest()->first();
        if(!$data) {
            $urutan_surat = 1;
        }
        else{
            $urutan_surat = $data->urutan_surat;
        }
        TestRequest::create([
            'no_surat' => $this->formatNomorSurat($urutan_surat, request('pengambil_sample')),
            'urutan_surat' => $urutan_surat+1,
            'produk' => request('produk'),
            'asal_sample' => request('asal_sample'),
            'jenis_sample' => request('jenis_sample'),
            'pengambil_sample' => request('pengambil_sample'),
            'tgl' => request('tgl'),
            'waktu' => request('waktu'),
            'approved_by' => auth()->user()->email,
            'jenis_test' => request('jenis_test'),
            'progress' => 'waiting',
            'status' => 'pending',
            'type' => request('type'),
        ]);

        return back()->with(['status' => true, 'message' => 'Pengantar sample berhasil dibuat.']);
    }
}
