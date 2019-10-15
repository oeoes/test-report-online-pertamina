<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ReleaseReport;
use App\SpesificReport;

class ReleaseReportController extends Controller
{
    public function store() {
        // save release data to db
        ReleaseReport::create([
            'flag' => request('flag'),
            'jenis' => request('jenis'),
            'type' => request('type'),
            'asal' => request('asal'),
            'no_test' => request('no_test'),
            'tgl_ambil' => request('tgl_ambil'),
            'tgl_terima' => request('tgl_terima'),
            'tgl_test' => request('tgl_test'),
            'tgl_pemeriksaan' => request('tgl_pemeriksaan'),
            'jenis_pemeriksaan' => request('jenis_pemeriksaan')
        ]);

        // duplicate
        $this->duplicateTestReport(request('flag'), request('type'));

        $print = SpesificReport::where('flag', request('flag'))->where('type', request('type'))->first();
        // check kalau misal nila print = 0, berarti ganti jadi 1 yg artinya orang lab sudah request dan menunggu approval dari pengawas
        if(request('type') == 'coq') {
            $print->print_coq = 1;
        } else if(request('type') == 'before') {
            $print->print_before = 1;
        } else if(request('type') == 'after') {
            $print->print_after = 1;
        } else {
            $print->print_distribution = 1;
        }     
        $print->save();

        return back();
    }

    public function duplicateTestReport($flag, $type) {
        $current = SpesificReport::where('flag', $flag)->first();

        SpesificReport::create([
            'produk' => $current->produk,
            'tag' => $current->tag,
            'flag' => $current->flag,
            'issuer' => $current->issuer,
            'type' => $type
        ]);
    }
}
