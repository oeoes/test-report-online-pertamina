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
                        <h2 class="text-md text-highlight">Reservasi</h2>
                        <small class="text-muted">Buat pengajuan untuk reservasi</small>
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
                                    <strong>Formulir Reservasi</strong>
                                </div>
                                <div class="card-body">
                                    @if(session('status'))
                                    <div id="myalert" class="alert alert-success" role="alert" style="display: none">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg>
                                        <span class="mx-2">{{ session('message') }}</span>
                                    </div>
                                    @endif
                                    
                                    <form action="{{ route('reservations.store') }}" method="post">
                                        @csrf

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Produk</label>
                                            <div class="col-sm-8">
                                                <select name="produk" class="custom-select" required>
                                                    <option disabled selected>Choose desired product</option>
                                                    <option value="pertamax">Pertamax</option>
                                                    <option value="pertamax turbo">Pertamax Turbo</option>
                                                    <option value="pertalite">Pertalite</option>
                                                    <option value="pertadex">Pertadex</option>
                                                    <option value="premium">Premium</option>
                                                    <option value="fame">Fame</option>
                                                    <option value="solar">Solar</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Asal Sample</label>
                                            <div class="col-sm-8">
                                                <input name="asal_sample" type="text" class="form-control" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Rencana Pengambilan</label>
                                            <div class="col-sm-8">
                                                <input name="tgl" id="event-start-date" type="date" class="form-control required"
                                                    placeholder="Date">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Waktu Pengambilan</label>
                                            <div class="col-sm-8">
                                                <input name="waktu" id="event-start-date" type="time" class="form-control required"
                                                    placeholder="Time">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Jenis Test</label>
                                            <div class="col-sm-8">
                                                <label class="md-check">
                                                    <input value="complete test" type="radio" name="jenis_test" checked="" required>
                                                    <i class="blue"></i>
                                                    Complete Test
                                                </label>

                                                <label class="md-check">
                                                    <input value="short test" type="radio" name="jenis_test" checked="" required>
                                                    <i class="blue"></i>
                                                    Short Test
                                                </label>
                                            </div>
                                        </div>

                                        <!-- type -->
                                        <input type="hidden" name="type" value="reservasi" required>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary" value="Submit" required>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="{{ asset('images/update.svg') }}" alt="" style="max-width: 100%">
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