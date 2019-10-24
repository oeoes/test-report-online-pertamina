@extends('layouts.master')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card border-0 shadow-sm p-3 mt-5">
                    <img src="{{ asset('images/logo.png') }}" alt="" srcset="" style="max-width: 100%;">
                    <div class="h3 text-center mt-4">Login</div>
                    <span class="text-muted text-center">Login to Golab Pertamina</span>
                    <hr>
                    <form action="{{ route('user.login') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input name="email" type="email" class="form-control" placeholder="email..." required>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input name="password" type="password" class="form-control" placeholder="password..." required>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary circle">Masuk  <i class="ml-2" data-feather="log-in"></i></button>
                        </div>
                    </form>
                    <a href="{{ route('user.join.page') }}">Join <i class="ml-2" data-feather="user-plus"></i></a>
                    @if($errors->any())
                        
                    @endif
                </div>
            </div>
        </div>
    </div>

@endsection