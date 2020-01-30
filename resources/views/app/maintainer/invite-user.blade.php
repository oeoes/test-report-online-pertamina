@extends('layouts.master')

@section('content')

@include('layouts.sidenav')
<div id="main" class="layout-column flex">
    @include('layouts.header')
    <!-- ############ Content START-->
    <div id="content" class="flex ">
        <!-- ############ Main START-->
        <div>
            <div class="page-hero page-container " id="page-hero">
                <div class="padding d-flex">
                    <div class="page-title">
                        <h2 class="text-md text-highlight">Invite User</h2>
                        <small class="text-muted">Invite pengguna untuk berkontribusi dalam go-lab</small>
                    </div>
                    <div class="flex"></div>
                </div>
        </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Invite User by Email</strong>
                                </div>
                                <div class="card-body">
                                    @if(session('status'))
                                    <div id="myalert" class="alert alert-success" role="alert" style="display: none">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg>
                                        <span class="mx-2">{{ session('message') }}</span>
                                    </div>
                                    @endif
                                    
                                    <form action="{{ route('users.store') }}" method="post">
                                        @csrf
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Email pengguna</label>
                                            <div class="col-sm-8">
                                                <input name="email" type="email" class="form-control" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Grant access as</label>
                                            <div class="col-sm-8">
                                                <select name="role" class="custom-select">
                                                    <option disabled selected>Pick role</option>
                                                    <option value="lv1">User 1</option>
                                                    <option value="lv2">User 2</option>
                                                    <option value="external">User External</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary" value="Invite">
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="{{ asset('images/invite-user.svg') }}" alt="" style="max-width: 100%">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ############ Main END-->
    </div>
    <!-- ############ Content END-->
    <!-- ############ Footer START-->
    <div id="footer" class="page-footer hide">
        <div class="d-flex p-3">
            <span class="text-sm text-muted flex">&copy; Copyright. flatfull.com</span>
            <div class="text-sm text-muted">Version 1.0.3</div>
        </div>
    </div>
    <!-- ############ Footer END-->
</div>

@endsection

