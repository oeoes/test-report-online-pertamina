<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Parameter;

class ParameterController extends Controller
{
    public function index() {
        return view('app.a3.add-parameter');
    }

    public function store() {
        Parameter::create([
            'name' => request('parameter')
        ]);

        return back()->with(['status' => true, 'message' => 'Parameter added.']);
    }
}
