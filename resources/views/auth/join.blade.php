@extends('layouts.master')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card border-0 shadow-sm p-3 mt-5">
                    <img src="{{ asset('images/logo.png') }}" alt="" srcset="" style="max-width: 100%;">
                    <div class="h3 text-center mt-4">Join</div>
                    <span class="text-muted text-center">Join using invited email address</span>
                    <hr>
                    <form action="{{ route('user.join') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input name="email" type="email" class="form-control" placeholder="email..." required>
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary btn-block" value="Join">
                        </div>
                    </form>
                    @if($errors->any())
                        <div class="display-1">{{ $errors }}</div>
                    @endif
                </div>
            </div>
        </div>
    </div>

@endsection