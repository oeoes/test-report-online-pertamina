<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestRequest;

class ReservationController extends Controller
{
    public function index() {
        return view('app.a1.reservasi');
    }

    public function store() {
        TestRequest::create([
            'no_surat' => request('no_surat'),
            'produk' => request('produk'),
            'asal_sample' => request('asal_sample'),
            'tgl' => request('tgl'),
            'jenis_test' => request('jenis_test'),
            'jenis_sample' => '-',
            'type' => request('type'),     
            'status' => 'pending',
        ]);
        return back()->with(['status' => true, 'message' => 'Pengajuan reservasi berhasil dibuat.']);
    }
}
