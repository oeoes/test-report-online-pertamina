<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SpesificReport;
use Illuminate\Support\Facades\DB;
use App\TestReport;
use App\ReleaseReport;
use PDF;

class SpesificReportController extends Controller
{
    // show report dengan value print != 0; nilai tersedia: 1=requested; 2=approved;
    public function index() {
        $print = SpesificReport::where('print_coq', '!=', 0)
                ->orWhere('print_before', '!=', 0)
                ->orWhere('print_after', '!=', 0)
                ->orWhere('print_distribution', '!=', 0)->latest()->paginate(15);

        return view('app.maintainer.print-approval')->with('print', $print);
    }

    // menampilkan data berdasarkan tipe [coq, before, after, distribution]
    public function showSpesificReport($flag, $type) {
        $title = SpesificReport::where('flag', $flag)->where('type', $type)->first();
        // check if title exists
        if(!$title) {
            $title = SpesificReport::where('flag', $flag)->where('type', NULL)->first();
        }

        // return data based on category
        if($type == 'coq') {
            $detail = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'coq_value')->where('flag', $flag)->get();
        }else if($type == 'before') {
            $detail = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'before_value')->where('flag', $flag)->get();
        }else if($type == 'after') {
            $detail = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'after_value')->where('flag', $flag)->get();
        }else {
            $detail = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'distribution_value')->where('flag', $flag)->get();
        }

        return view('app.a3.detail-report')->with(['detail' => $detail, 'title' => $title, 'type' => $type]);
    }

    // memperbarui nilai result pada masing-masing kategori [coq, before, after, distirbution]
    // POST
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

    // request print dari orang lab
    // GET
    public function requestPrint($flag, $type) {
        $print = SpesificReport::where('flag', $flag)->where('type', $type)->first();
        
        if($type == 'coq') {
            $print->print_coq = 2;
        } else if($type == 'before') {
            $print->print_before = 2;
        }else if ($type == 'after') {
            $print->print_after = 2;
        }else {
            $print->print_distribution = 2;
        }
              
        $print->save();
        return back();
    }

    // print test report
    // POST
    public function printTestReport($flag, $type) {

        // untuk pertanggalan pada ttd surat
        $month = \Carbon\Carbon::now();
        $bulan = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

        // check type
        if($type == 'coq') {
            $data = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'coq_value')->where('flag', $flag)->get();
        }else if($type == 'before') {
            $data = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'before_value')->where('flag', $flag)->get();
        }else if($type == 'after') {
            $data = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'after_value')->where('flag', $flag)->get();
        }else {
            $data = DB::table('test_reports')->select('id', 'parameter', 'metode', 'unit', 'limit_min', 'limit_max', 'distribution_value')->where('flag', $flag)->get();
        }
        // get nama produk doang
        $produk = TestReport::where('flag', $flag)->first();
        $release_detail = ReleaseReport::where('flag', $flag)->where('type', $type)->first();
        
        $pdf = PDF::loadView('templates.test-report', ['penandatangan' => request('penandatangan'), 'jabatan_penandatangan' => request('jabatan_penandatangan'), 'detail' => $release_detail, 'type' => $type, 'data' => $data, 'produk' => $produk->produk, 'date' => $month->format('d').' '.$bulan[ltrim($month->format('m'), 0)].' '.$month->format('Y')]);
        return $pdf->stream('Test report.pdf');
    }
}
