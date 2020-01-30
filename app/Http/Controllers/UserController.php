<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function index() {
        $users = User::where('role', '!=', 'maintainer')->orderBy('role')->paginate(10);
        return view('app.maintainer.daftar-user')->with('users', $users);
    }
    public function create() {
        return view('app.maintainer.invite-user');
    }

    public function store() {
        User::create([
            'email' => request('email'),
            'role' => request('role'),
            'password' => bcrypt(Str::random(32)),
            'name' => 'No name',
            'email_verified_at' => \Carbon\Carbon::now()
        ]);

        return back()->with(['status' => true, 'message' => 'User invited, waiting for confirmation']);
    }

    // sebenernya parameternya email bukan id
    public function show($id) {
        $user = User::where('email', $id)->first();
        return $user;
    }
}
