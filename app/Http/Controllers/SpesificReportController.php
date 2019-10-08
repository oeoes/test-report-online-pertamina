<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SpesificReport;
use Illuminate\Support\Facades\DB;
use App\TestReport;
use PDF;

class SpesificReportController extends Controller
{
    public function index() {
        $print = SpesificReport::where('print', '!=', 0)->latest()->paginate(15);
        return view('app.maintainer.print-approval')->with('print', $print);
    }

    public function showSpesificReport($flag, $type) {
        $title = SpesificReport::where('flag', $flag)->first();
        $detail = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'before_value', 'after_value', 'distribution_value', 'coq_value')->where('flag', $flag)->get();

        return view('app.a3.detail-report')->with(['detail' => $detail, 'title' => $title, 'type' => $type]);
    }

    public function update($id) {
        $current = TestReport::find($id);
        if(request('type') == 'before') {
            $current->before_value = request('value');
        }
        else if(request('type') == 'after') {
            $current->after_value = request('value');
        }
        else if(request('type') == 'distribution') {
            $current->distribution_value = request('value');
        }else{
            $current->coq_value = request('value');
        }
        $current->save();
        return back();
    }

    public function requestPrint($flag) {
        $print = SpesificReport::where('flag', $flag)->first();
        if($print->print == 0) {
            $print->print = 1;
        }
        else if($print->print == 1) {
            $print->print = 2;
        }        
        $print->save();
        return back();
    }

    public function printTestReport($flag) {
        // untuk pertanggalan pada ttd surat
        $month = \Carbon\Carbon::now();
        $bulan = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

        $data = TestReport::where('flag', $flag)->get();
        // get nama produk doang
        $produk = TestReport::where('flag', $flag)->first();
        
        $pdf = PDF::loadView('templates.test-report', ['data' => $data, 'produk' => $produk->produk, 'date' => $month->format('d').' '.$bulan[$month->format('m')].' '.$month->format('Y')]);
        return $pdf->stream('Test report.pdf');
    }
}
