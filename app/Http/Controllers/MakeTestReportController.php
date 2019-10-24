<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MakeTestReport;
use App\MasterData;

class MakeTestReportController extends Controller
{
    public function store() {
        $data = MasterData::where('product_id', request('product_id'))->get();
        $result = request('result');

        if(request('type') == 'coq') {
            foreach ($data as $k => $d) {
                MakeTestReport::create([
                    'product_id' => request('product_id'),
                    'master_data_id' => $d->id,
                    'coq' => $result[$k],
                    'asal_sample' => request('asal_sample'),
                    'no_test' => request('no_test'),
                    'jenis_pemeriksaan' => request('jenis_pemeriksaan'),
                    'penandatangan' => request('penandatangan')
                ]);
            }
        }
    }
}
