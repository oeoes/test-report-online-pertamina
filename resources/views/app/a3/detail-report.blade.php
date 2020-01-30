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
                        <h2 class="text-md text-highlight">Test Report</h2>
                        <small class="text-muted">Test report section</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Reports</strong>
                                    @if($type == 'coq')
                                        @if($title->print_coq == 0)
                                        <!-- release report -->
                                        <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#print">Release</button>
                                        @elseif($title->print_coq == 1)
                                        <a href="" class="btn btn-sm btn-secondary float-right circle">Requested</a>
                                        @else
                                        <!-- print test report -->
                                        <!-- <a href="{{ route('spesific-reports.print', ['flag' => $title->flag, 'type' => $type]) }}" class="btn btn-sm btn-info float-right circle">Print Report</a> -->
                                        <button type="button" class="btn btn-primary float-right circle" data-toggle="modal" data-target="#printlangsung">Print Report</button>
                                        @endif
                                    @elseif($type == 'before')
                                        @if($title->print_before == 0)
                                        <!-- release report -->
                                        <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#print">Release</button>
                                        @elseif($title->print_before == 1)
                                        <a href="" class="btn btn-sm btn-secondary float-right circle">Requested</a>
                                        @else
                                        <!-- print test report -->
                                        <a href="{{ route('spesific-reports.print', ['flag' => $title->flag, 'type' => $type]) }}" class="btn btn-sm btn-info float-right circle">Print Report</a>
                                        @endif
                                    @elseif($type == 'after')
                                        @if($title->print_after == 0)
                                        <!-- release report -->
                                        <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#print">Release</button>
                                        @elseif($title->print_after == 1)
                                        <a href="" class="btn btn-sm btn-secondary float-right circle">Requested</a>
                                        @else
                                        <!-- print test report -->
                                        <!-- <a href="{{ route('spesific-reports.print', ['flag' => $title->flag, 'type' => $type]) }}" class="btn btn-sm btn-info float-right circle">Print Report</a> -->
                                        <button type="button" class="btn btn-primary float-right circle" data-toggle="modal" data-target="#printlangsung">Print Report</button>
                                        @endif
                                    @else
                                        @if($title->print_distribution == 0)
                                        <!-- release report -->
                                        <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#print">Release</button>
                                        @elseif($title->print_distribution == 1)
                                        <a href="" class="btn btn-sm btn-secondary float-right circle">Requested</a>
                                        @else
                                        <!-- print test report -->
                                        <!-- <a href="{{ route('spesific-reports.print', ['flag' => $title->flag, 'type' => $type]) }}" class="btn btn-sm btn-info float-right circle">Print Report</a> -->
                                        <button type="button" class="btn btn-primary float-right circle" data-toggle="modal" data-target="#printlangsung">Print Report</button>
                                        @endif
                                    @endif

                                    <!-- Modal Print request -->
                                    <div class="modal fade" id="print" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Release Detail</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="{{ route('release.store') }}" method="post">
                                                @csrf
                                                <div class="form-group">
                                                    <input value="{{ $title->flag }}" name="flag" type="hidden" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <input value="{{ $type }}" name="type" type="hidden" class="form-control" required>
                                                </div>

                                                <div class="form-group">
                                                    <label>Jenis Sample</label>
                                                    <input disabled value="{{ ucwords($title->produk) }}" type="text" class="form-control" placeholder="Jenis sample" required>
                                                    <input value="{{ $title->produk }}" name="jenis" type="hidden" class="form-control" placeholder="Jenis sample" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>No. Test</label>
                                                    <input name="no_test" type="text" class="form-control" placeholder="No test" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Asal Sample</label>
                                                    <input name="asal" type="text" class="form-control" placeholder="Asal sample" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tgl Pengambilan Sample </label>
                                                    <input name="tgl_ambil" type="date" class="form-control" placeholder="Tagl pengambilan sample" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tanggal Terima Sample</label>
                                                    <input name="tgl_terima" type="date" class="form-control" placeholder="Tgl terima sample" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tanggal Test</label>
                                                    <input name="tgl_test" type="date" class="form-control" placeholder="Tgl test" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tanggal Pemeriksaan</label>
                                                    <input name="tgl_pemeriksaan" type="date" class="form-control" placeholder="Tgl pemeriksaan" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Jenis Pemeriksaan</label>
                                                    <select name="jenis_pemeriksaan" id="" class="custom-select">
                                                        <option value="short test">Short Test</option>
                                                        <option value="complete test">Complete Test</option>
                                                    </select>
                                                </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-sm btn-primary circle pl-3 pr-3"><i data-feather='download'></i></button>
                                            </form>
                                            <button type="button" class="btn btn-sm btn-danger circle pl-3 pr-3" data-dismiss="modal"><i data-feather='x-circle'></i></button>
                                        </div>
                                        </div>
                                    </div>
                                    </div>
                                    <!-- end of modal -->

                                    <!-- Modal langsung print -->
                                    <div class="modal fade" id="printlangsung" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Print Report</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="{{ route('spesific-reports.print', ['flag' => $title->flag, 'type' => $type]) }}" method="post">
                                                @csrf

                                                <div class="form-group">
                                                    <label>Penandatangan</label>
                                                    <input name="penandatangan" type="text" class="form-control" placeholder="Penandatangan" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Jabatan Penandatangan</label>
                                                    <input name="jabatan_penandatangan" type="text" class="form-control" placeholder="Jabatan penandatangan" required>
                                                </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-sm btn-primary circle pl-3 pr-3"><i data-feather='printer'></i></button>
                                            </form>
                                            <button type="button" class="btn btn-sm btn-danger circle pl-3 pr-3" data-dismiss="modal"><i data-feather='x-circle'></i></button>
                                        </div>
                                        </div>
                                    </div>
                                    </div>
                                    <!-- end of modal -->

                                </div>
                                <div class="card-body"> 
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Produk</label>
                                        <div class="col-sm-4 detail-form">
                                            {{ ucwords($title->produk) }}
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Issuer</label>
                                        <div class="col-sm-4 detail-form">
                                            {{ $title->issuer }}
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Bundled Date</label>
                                        <div class="col-sm-4 detail-form">
                                            {{ $title->created_at->diffForHumans() }}
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table id="table" class="table table-theme v-middle mt-3" data-plugin="bootstrapTable"
                                        data-toolbar="#toolbar" data-search="true" data-search-align="left" data-show-export="true"
                                        data-show-columns="true" data-detail-view="false" data-mobile-responsive="true"
                                        data-pagination="true" data-page-list="[10, 25, 50, 100, ALL]">
                                        <thead>
                                            <tr>
                                                <th data-sortable="true" data-field="produk">Parameter</th>
                                                <th data-sortable="true" data-field="produk">Method test</th>
                                                <th data-sortable="true" data-field="produk">Unit</th>
                                                <th data-sortable="true" data-field="produk">Limitation Min</th>
                                                <th data-sortable="true" data-field="produk">Limitation Max</th>
                                                <th data-sortable="true" data-field="produk">{{ ucwords($type) }}</th>
                                                <th data-sortable="true" data-field="produk">Result</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($detail as $dv)
                                            <tr class="" data-id="17">
                                                <td>
                                                    <span class="item-amount d-sm-block text-sm ">
                                                        {{ $dv->parameter }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-sm-block text-sm [object Object]">
                                                        {{ $dv->metode }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-sm-block text-sm ">
                                                        {{ $dv->unit }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-sm-block text-sm [object Object]">
                                                        {{ $dv->limit_min }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-sm-block text-sm [object Object]">
                                                        {{ $dv->limit_max }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-sm-block text-sm [object Object]">
                                                        @if($type == 'coq')
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->coq_value }}</span>
                                                        @elseif($type == 'before')
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->before_value }}</span>
                                                        @elseif($type == 'after')
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->after_value }}</span>
                                                        @else
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->distribution_value }}</span>                                                        
                                                        @endif
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-sm-block text-sm [object Object]">
                                                        <form action="{{ route('spesific-reports.update', $dv->id) }}" method="post">
                                                            @csrf
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <input name="value" type="text" class="form-control circle" placeholder="{{ $dv->parameter }}" required>
                                                                    <input type="hidden" name="_method" value="PUT">
                                                                    <input type="hidden" name="type" value="{{ $type }}">
                                                                    <!-- <input type="hidden" name="type" value=""> -->
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <button type="submit" class="btn btn-sm btn-primary circle pl-3 pr-3"><i data-feather="check-square"></i></button>
                                                                </div>                                                           
                                                            </div>
                                                        </form>
                                                    </span>
                                                </td>
                                            </tr>
                                            @endforeach
                                            
                                        </tbody>
                                    </table>
                                    </div>

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