<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\User;
use App\TestReport;
use App\MasterData;
use App\Product;

class AuthController extends Controller
{
    public function __construct() {
        $this->middleware('guest')->except(['home', 'signOut']);
    }
    public function index() {
        return view('auth.login');
    }

    public function login() {
        $credentials = request(['email', 'password']);
        if(!auth()->attempt($credentials))
        {
            return back()->withErrors(['message' => 'Invalid Credentials']);
        }

        if(auth()->user()->role == 'lv1') {
            return redirect()->route('requests.index');
        }else if(auth()->user()->role == 'lv2') {
            return redirect()->route('reports.index');
        }else {
            return redirect()->route('home');
        }
    }

    public function signOut() {
        auth()->logout();
        return redirect()->route('user.login.page');
    }

    public function home() {
        $parameter = MasterData::latest()->get();
        $product = Product::latest()->get();
        return view('home')->with(['parameter' => $parameter, 'product' => $product]);
    }

    public function joinPage() {
        return view('auth.join');
    }

    public function join() {
        $check = User::where('email', request('email'))->first();
        if($check) {
            return view('auth.complete-data')->with('email', $check->email);
        }else {
            return back()->with(['status' => false, 'message' => 'Sorry, you\'re not invited.']);
        }
    }

    public function completeUser() {
        $user = User::where('email', request('email'))->first();

        if(!$user) {
            return back()->with(['status' => false, 'message' => 'Check your email address']);
        }

        $user->name = request('name');
        $user->email_verified_at = \Carbon\Carbon::now();
        $user->password = bcrypt(request('password'));
        $user->status = 'verified';
        $user->save();

        return redirect()->route('user.login.page');
    }
}
