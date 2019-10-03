<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestRequest;


class DetailProcessController extends Controller
{
    public function index() {
        $detail = TestRequest::where('status', 'approved')->get();
        return view('app.a2.detail-proses')->with('detail', $detail);
    }
}
