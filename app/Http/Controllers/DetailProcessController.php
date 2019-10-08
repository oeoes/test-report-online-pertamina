<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestRequest;


class DetailProcessController extends Controller
{
    public function index() {
        $detail = TestRequest::where('status', 'approved')->paginate(15);
        return view('app.a2.detail-proses')->with('detail', $detail);
    }

    public function show($id) {
        $detail = TestRequest::find($id);
        return view('app.a2.detail')->with('detail', $detail);
    }

    public function changeState($id, $state) {
        $current = TestRequest::find($id);
        if($state == 'accepted') {
            $current->accepted = \Carbon\Carbon::now();
            $current->progress = 'accepted';
            $current->accepted_by = auth()->user()->email;
        }
        else if($state == 'sampling') {
            $current->sampling = \Carbon\Carbon::now();
            $current->progress = 'sampling';
            $current->sampled_by = auth()->user()->email;
        }
        else if($state == 'arrived') {
            $current->arrived = \Carbon\Carbon::now();
            $current->progress = 'arrived';
            $current->arrived_by = auth()->user()->email;
        }
        else if($state == 'testing') {
            $current->testing = \Carbon\Carbon::now();
            $current->progress = 'testing';
            $current->tested_by = auth()->user()->email;
        }
        else{
            $current->released = \Carbon\Carbon::now();
            $current->progress = 'released';
            $current->released_by = auth()->user()->email;
        }

        $current->save();
        return back();
    }
}
