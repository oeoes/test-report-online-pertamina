<div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong>Detail Formulir</strong>
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
                                        <span class="item-amount d-sm-block text-sm">
                                        <span class="badge mb-1 badge-light p-2">None</span>
                                    </span>
                                    @else
                                    <span class="item-amount d-sm-block text-sm">
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->accepted }}" class="badge mb-1 badge-success p-2"><i data-feather='clock'></i></a>
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->accepted_by }}" class="badge mb-1 badge-success p-2"><i data-feather='user'></i></a>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Sampling</label>
                                <div class="col-sm-8 detail-form">
                                    @if(!$detail->sampling)
                                        <span class="item-amount d-sm-block text-sm">
                                        <span class="badge mb-1 badge-light p-2">None</span>
                                    </span>
                                    @else
                                    <span class="item-amount d-sm-block text-sm">
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->sampling }}" class="badge mb-1 badge-success p-2"><i data-feather='clock'></i></a>
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->sampled_by }}" class="badge mb-1 badge-success p-2"><i data-feather='user'></i></a>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Arrived</label>
                                <div class="col-sm-8 detail-form">
                                    @if(!$detail->arrived)
                                        <span class="item-amount d-sm-block text-sm">
                                        <span class="badge mb-1 badge-light p-2">None</span>
                                    </span>
                                    @else
                                    <span class="item-amount d-sm-block text-sm">
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->arrived }}" class="badge mb-1 badge-success p-2"><i data-feather='clock'></i></a>
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->arrived_by }}" class="badge mb-1 badge-success p-2"><i data-feather='user'></i></a>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Testing</label>
                                <div class="col-sm-8 detail-form">
                                    @if(!$detail->testing)
                                        <span class="item-amount d-sm-block text-sm">
                                        <span class="badge mb-1 badge-light p-2">None</span>
                                    </span>
                                    @else
                                    <span class="item-amount d-sm-block text-sm">
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->testing }}" class="badge mb-1 badge-success p-2"><i data-feather='clock'></i></a>
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->tested_by }}" class="badge mb-1 badge-success p-2"><i data-feather='user'></i></a>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Released</label>
                                <div class="col-sm-8 detail-form">
                                    @if(!$detail->released)
                                        <span class="item-amount d-sm-block text-sm">
                                        <span class="badge mb-1 badge-light p-2">None</span>
                                    </span>
                                    @else
                                    <span class="item-amount d-sm-block text-sm">
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->released }}" class="badge mb-1 badge-success p-2"><i data-feather='clock'></i></a>
                                        <a style="color: white" data-toggle="tooltip" title="{{ $detail->released_by }}" class="badge mb-1 badge-success p-2"><i data-feather='user'></i></a>
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
                            @if(auth()->user()->role == 'lv2' || auth()->user()->role == 'external')
                            <div class="form-group">
                                @if($detail->progress == 'waiting')
                                <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'accepted']) }}" class="btn btn-primary">Start</a>
                                @endif

                                @if($detail->accepted_by == auth()->user()->email)
                                    @if($detail->progress == 'accepted')
                                    <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'sampling']) }}" class="btn btn-primary">Take Sample</a>
                                    @elseif($detail->progress == 'sampling')
                                    <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'arrived']) }}" class="btn btn-primary">Done</a>
                                    @endif
                                @endif

                                @if($detail->progress == 'arrived' && auth()->user()->role != 'external')
                                <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'testing']) }}" class="btn btn-primary">Testing</a>
                                @endif
                                
                                @if($detail->progress == 'testing' && auth()->user()->role != 'external')
                                <a href="{{ route('details.change.state', ['id' => $detail->id, 'type' => 'released']) }}" class="btn btn-primary">Release Test</a>
                                @elseif($detail->progress == 'released')
                                <div class="btn btn-primary">Completed <span><i data-feather='check-circle' class="ml-1"></i></span></div>
                                @endif
                            </div>
                            @endif

                        </form>

                    </div>
                </div>
            </div>
            <div class="col-md-12">
                @if(!$detail->accepted || $detail->released)
                <div class="tracking">
                    Pelacakan realtime tidak tersedia <br> <small>Pelacakan belum dimulai atau sudah berakhir.</small>
                </div>
                @endif
                <div id="mapid" style="height: 500px; border-radius: 10px" class="mb-5"></div>
                <!-- <img src="{{ asset('images/detail.svg') }}" alt="" style="max-width: 100%"> -->
            </div>
        </div>
    </div>
</div>