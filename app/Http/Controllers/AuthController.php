<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

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
            return back()->withErrors('Invalid Credentials');
        }
        return redirect()->route('home');
    }

    public function signOut() {
        auth()->logout();
        return redirect()->route('users.index');
    }

    public function home() {
        return view('home');
    }
}
