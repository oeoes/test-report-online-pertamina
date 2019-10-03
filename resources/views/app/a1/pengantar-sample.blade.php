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
                        <h2 class="text-md text-highlight">Pengantar Sample</h2>
                        <small class="text-muted">Buat pengajuan pengantar sample</small>
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
                                    <strong>Formulir Pengantar Sample</strong>
                                </div>
                                <div class="card-body">
                                    @if(session('status'))
                                    <div id="myalert" class="alert alert-success" role="alert" style="display: none">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg>
                                        <span class="mx-2">{{ session('message') }}</span>
                                    </div>
                                    @endif
                                    
                                    <form action="{{ route('requests.store') }}" method="post">
                                        @csrf
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">No Surat</label>
                                            <div class="col-sm-8">
                                                <input name="no_surat" type="text" class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Produk</label>
                                            <div class="col-sm-8">
                                                <select name="produk" class="custom-select">
                                                    <option disabled selected>Choose desired product</option>
                                                    <option value="pertamax">Pertamax</option>
                                                    <option value="pertamax turbo">Pertamax Turbo</option>
                                                    <option value="pertalite">Pertalite</option>
                                                    <option value="premium">Premium</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Asal Sample</label>
                                            <div class="col-sm-8">
                                                <input name="asal_sample" type="text" class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Jenis Sample</label>
                                            <div class="col-sm-8">
                                                <input name="jenis_sample" type="text" class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Pengambil Sample</label>
                                            <div class="col-sm-8">
                                                <label class="md-check">
                                                    <input value="QQ ITP" type="radio" name="pengambil_sample"
                                                        checked="">
                                                    <i class="blue"></i>
                                                    QQ ITP
                                                </label>

                                                <label class="md-check">
                                                    <input value="QQ PLP" type="radio" name="pengambil_sample"
                                                        checked="">
                                                    <i class="blue"></i>
                                                    QQ PLP
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tanggal Pengambilan</label>
                                            <div class="col-sm-8">
                                                <input name="tgl" id="event-start-date" type="date" class="form-control"
                                                    placeholder="Date">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Jenis Test</label>
                                            <div class="col-sm-8">
                                                <label class="md-check">
                                                    <input value="Complete Test" type="radio" name="jenis_test" checked="">
                                                    <i class="blue"></i>
                                                    Complete Test
                                                </label>

                                                <label class="md-check">
                                                    <input value="Short Test" type="radio" name="jenis_test" checked="">
                                                    <i class="blue"></i>
                                                    Short Test
                                                </label>
                                            </div>
                                        </div>
                                        <!-- type -->
                                        <input name="type" type="hidden" value="pengantar">
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary" value="Submit">
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="{{ asset('images/sample.svg') }}" alt="" style="max-width: 100%">
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

