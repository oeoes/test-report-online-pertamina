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
                        <h2 class="text-md text-highlight">Master Data</h2>
                        <small class="text-muted">Add data</small>
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
                                    <strong>Input your fuckin data</strong>
                                </div>
                                <div class="card-body">
                                    @if(session('status'))
                                    <div id="myalert" class="alert alert-success" role="alert" style="display: none">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg>
                                        <span class="mx-2">{{ session('message') }}</span>
                                    </div>
                                    @endif
                                    
                                    <form action="{{ route('reports.before.add') }}" method="post">
                                        @csrf
                                        <div class="form-group">
                                            <label>Produk</label>
                                            <select name="produk" class="custom-select">
                                                <option disabled selected>Choose product</option>
                                                @foreach($option as $o)
                                                @if($o == $data->produk)
                                                <option selected value="{{ $o }}">{{ ucwords($o) }}</option>
                                                @else
                                                <option value="{{ $o }}">{{ ucwords($o) }}</option>
                                                @endif
                                                @endforeach
                                                <option value="pertamax turbo">Pertamax Turbo</option>
                                                <option value="pertalite">Pertalite</option>
                                                <option value="premium">Premium</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Parameter</label>
                                            <input value="{{ $data->parameter }}" name="parameter" type="text" class="form-control" placeholder="Parameter...">
                                        </div> 
                                        <div class="form-group">
                                            <label>Metode</label>
                                            <input value="{{ $data->metode }}" name="metode" type="text" class="form-control" placeholder="Method test...">
                                        </div> 
                                        <div class="form-group">
                                            <label>Unit</label>
                                            <input value="{{ $data->unit }}" name="unit" type="text" class="form-control" placeholder="Unit...">
                                        </div>
                                        <div class="form-group">
                                            <label>Limitation Min</label>
                                            <input value="{{ $data->limit_min }}" name="limit_min" type="text" class="form-control" placeholder="Limitation min...">
                                        </div>
                                        <div class="form-group">
                                            <label>Limitation Max</label>
                                            <input value="{{ $data->limit_max }}" name="limit_max" type="text" class="form-control" placeholder="Limitation max...">
                                        </div> 

                                        <div class="form-group">
                                            <label>Result</label>
                                            <input value="{{ $data->result }}" name="result" type="text" class="form-control" placeholder="Result...">
                                        </div> 
                                        <!-- hidden -->
                                        <input value="{{ $data->user_id }}" name="user_id" type="hidden" >
                                        <input value="{{ $data->user_email }}" name="user_email" type="hidden" >
                                        <input value="{{ $type }}" name="type" type="hidden" >

                                        <div class="form-group">
                                            <input name="" type="submit" class="btn btn-primary" value="Process">
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="row align-self-center">
                                <div class="col">
                                    <img style="max-width: 100%" src="{{ asset('images/process.svg') }}" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ############ Main END-->
    </div>
    <!-- ############ Content END-->
</div>

@endsection
