<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestRequest;
use Illuminate\Support\Facades\DB;

class ReservationController extends Controller
{
    public function index() {
        return view('app.a1.reservasi');
    }

    public function formatNomorSurat($no_awal) {
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

        return $no.'/IX/'.\Carbon\Carbon::now()->format('Y');
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
            'no_surat' => $this->formatNomorSurat($urutan_surat),
            'urutan_surat' => $urutan_surat+1,
            'produk' => request('produk'),
            'asal_sample' => request('asal_sample'),
            'tgl' => request('tgl'),
            'waktu' => request('waktu'),
            'approved_by' => auth()->user()->email,
            'jenis_test' => request('jenis_test'),
            'jenis_sample' => '-',
            'pengambil_sample' => '-',
            'type' => request('type'),     
            'status' => 'pending',
        ]);
        return back()->with(['status' => true, 'message' => 'Pengajuan reservasi berhasil dibuat.']);
    }
}
