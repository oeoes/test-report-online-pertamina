<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TestRequest;

class InboxController extends Controller
{
    public function index() {
        $inbox = TestRequest::where('status', 'pending')->get();
        return view('app.a2.surat-masuk', ['inbox' => $inbox]);
    }

    public function show($id) {
        $target = TestRequest::find($id);
        $target->status = 'approved';
        $target->save();
        return redirect()->route('inboxes.index');
    }

    public function refuseRequest($id) {
        $target = TestRequest::find($id);
        $target->status = 'refused';
        $target->save();
        return redirect()->route('inboxes.index');
    }
}
