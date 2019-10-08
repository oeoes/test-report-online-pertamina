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
                        <h2 class="text-md text-highlight">Detail Process</h2>
                        <small class="text-muted">Record detail process</small>
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
                                    <form>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">No Surat</label>
                                            <div class="col-sm-8 detail-form">
                                                {{ $detail->no_surat }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Produk</label>
                                            <div class="col-sm-8 detail-form">
                                                {{ $detail->produk }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Asal Sample</label>
                                            <div class="col-sm-8 detail-form">
                                                {{ $detail->asal_sample }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Jenis Sample</label>
                                            <div class="col-sm-8 detail-form">
                                                {{ $detail->jenis_sample }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Pengambil Sample</label>
                                            <div class="col-sm-8 detail-form">
                                                {{ $detail->pengambil_sample }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tanggal</label>
                                            <div class="col-sm-8 detail-form">
                                                {{ $detail->tgl }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Waktu</label>
                                            <div class="col-sm-8 detail-form">
                                                {{ $detail->waktu }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Accepted</label>
                                            <div class="col-sm-8 detail-form">
                                                @if(!$detail->accepted)
                                                 <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-light p-2">None</span>
                                                </span>
                                                @else
                                                <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-success p-2"><i data-feather='clock'></i> {{ $detail->accepted }}</span>
                                                    <span class="badge badge-success p-2"><i data-feather='user'></i> {{ $detail->accepted_by }}</span>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Sampling</label>
                                            <div class="col-sm-8 detail-form">
                                                @if(!$detail->sampling)
                                                 <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-light p-2">None</span>
                                                </span>
                                                @else
                                                <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-success p-2"><i data-feather='clock'></i> {{ $detail->sampling }}</span>
                                                    <span class="badge badge-success p-2"><i data-feather='user'></i> {{ $detail->sampled_by }}</span>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Arrived</label>
                                            <div class="col-sm-8 detail-form">
                                                @if(!$detail->arrived)
                                                 <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-light p-2">None</span>
                                                </span>
                                                @else
                                                <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-success p-2"><i data-feather='clock'></i> {{ $detail->arrived }}</span>
                                                    <span class="badge badge-success p-2"><i data-feather='user'></i> {{ $detail->arrived_by }}</span>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Testing</label>
                                            <div class="col-sm-8 detail-form">
                                                @if(!$detail->testing)
                                                 <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-light p-2">None</span>
                                                </span>
                                                @else
                                                <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-success p-2"><i data-feather='clock'></i> {{ $detail->testing }}</span>
                                                    <span class="badge badge-success p-2"><i data-feather='user'></i> {{ $detail->tested_by }}</span>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Released</label>
                                            <div class="col-sm-8 detail-form">
                                                @if(!$detail->released)
                                                 <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-light p-2">None</span>
                                                </span>
                                                @else
                                                <span class="item-amount d-none d-sm-block text-sm">
                                                    <span class="badge badge-success p-2"><i data-feather='clock'></i> {{ $detail->released }}</span>
                                                    <span class="badge badge-success p-2"><i data-feather='user'></i> {{ $detail->released_by }}</span>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Progress</label>
                                            <div class="col-sm-8 detail-form">
                                                <div class="line"></div>
                                                <div class="d-flex">
                                                    @if($detail->progress == 'waiting')
                                                    <div class="w-20 m-1 circle bg-progress-ac current" data-toggle="tooltip" title="" data-original-title="Waiting"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Accepted"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Sampling"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Arrived"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Testing"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Released"></div>
                                                    @elseif($detail->progress == 'accepted')
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Waiting"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac current" data-toggle="tooltip" title="" data-original-title="Accepted"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Sampling"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Arrived"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Testing"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Released"></div>
                                                    @elseif($detail->progress == 'sampling')
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Waiting"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Accepted"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac current" data-toggle="tooltip" title="" data-original-title="Sampling"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Arrived"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Testing"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Released"></div>
                                                    @elseif($detail->progress == 'arrived')
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Waiting"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Accepted"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Sampling"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac current" data-toggle="tooltip" title="" data-original-title="Arrived"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Testing"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Released"></div>
                                                    @elseif($detail->progress == 'testing')
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Waiting"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Accepted"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Sampling"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Arrived"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac current" data-toggle="tooltip" title="" data-original-title="Testing"></div>
                                                    <div class="w-20 m-1 circle bg-progress" data-toggle="tooltip" title="" data-original-title="Released"></div>
                                                    @else
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Waiting"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Accepted"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Sampling"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Arrived"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Testing"></div>
                                                    <div class="w-20 m-1 circle bg-progress-ac" data-toggle="tooltip" title="" data-original-title="Released"></div>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        @if(auth()->user()->role == 'lv2')
                                        <div class="form-group">
                                            @if($detail->progress == 'waiting')
                                            <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'accepted']) }}" class="btn btn-primary">Start</a>
                                            @elseif($detail->progress == 'accepted')
                                            <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'sampling']) }}" class="btn btn-primary">Take Sample</a>
                                            @elseif($detail->progress == 'sampling')
                                            <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'arrived']) }}" class="btn btn-primary">Done</a>
                                            @elseif($detail->progress == 'arrived')
                                            <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'testing']) }}" class="btn btn-primary">Testing</a>
                                            @elseif($detail->progress == 'testing')
                                            <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'released']) }}" class="btn btn-primary">Release Test</a>
                                            @else
                                            <div class="btn btn-primary">Completed <span><i data-feather='check-circle' class="ml-1"></i></span></div>
                                            @endif
                                        </div>
                                        @endif

                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="{{ asset('images/detail.svg') }}" alt="" style="max-width: 100%">
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