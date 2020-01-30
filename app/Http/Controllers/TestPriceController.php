<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestPrice;
use PDF;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class TestPriceController extends Controller
{
    public function index() {
        $data = TestPrice::all();
        return $data;
    }

    public function store() {
        $biaya = TestPrice::create([
            'parameter' => request('parameter'),
            'metode' => request('metode'),
            'harga' => request('harga'),
        ]);

        return $biaya;
    }

    public function create() {
        return view('app.a3.biaya-uji');
    }

    public function update($id) {
        $data = TestPrice::find($id);
        $data->parameter = request('parameter');
        $data->metode = request('metode');
        $data->harga = request('harga');
        $data->save();

        return TestPrice::all();
    }

    public function printTestPrice() {
        $bulan = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
        $date_report = \Carbon\Carbon::createFromDate(request('date_report'));
        $parameters = [];
        $ids = request('id');
        $total = 0;
        for ($i=0; $i < sizeof($ids); $i++) { 
            $data = TestPrice::find($ids[$i]);
            $total += $data->harga;
            array_push($parameters, $data);
        }
        $pdf = PDF::loadView('templates.report-biaya-uji', [
            'data' => $parameters,
            'total' => $total,
            'product_name' => request('product_name'),
            'no_test' => request('no_test'),
            'asal_sample' => request('asal_sample'),
            'date_report' => $date_report->format('d').' '.$bulan[ltrim($date_report->format('m'), 0)].' '.$date_report->format('Y'),
            'jenis_pemeriksaan' => request('jenis_pemeriksaan')
        ]);

        $content = $pdf->download()->getOriginalContent();
        Storage::disk('local')->put('biaya_uji.pdf', $content);
        return response()->download(storage_path().'/app/biaya_uji.pdf', 'biaya_uji.pdf', ['Content-Type' => ' application/pdf'])->deleteFileAfterSend();
    }
}
