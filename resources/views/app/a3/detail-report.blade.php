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
                                    @if(auth()->user()->role == 'maintainer')
                                        @if($title->print == 1)
                                        <a href="{{ route('spesific-reports.request-print', $title->flag) }}" class="btn btn-sm btn-success float-right circle">Approve</a>
                                        @elseif($title->print == 2)
                                        <a href="{{ route('spesific-reports.print', $title->flag) }}" class="btn btn-sm btn-primary float-right circle pl-3 pr-3"><i data-feather='download'></i></a>
                                        @endif
                                    @else
                                        @if($title->print == 0)
                                        <a href="{{ route('spesific-reports.request-print', $title->flag) }}" class="btn btn-sm btn-info float-right circle">Request print</a>
                                        @elseif($title->print == 1)
                                        <a href="" class="btn btn-sm btn-secondary float-right circle">Requested</a>
                                        @else
                                        <a href="{{ route('spesific-reports.print', $title->flag) }}" class="btn btn-sm btn-primary float-right circle pl-3 pr-3"><i data-feather='download'></i></a>
                                        @endif
                                    @endif
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

                                    <table id="table" class="table table-theme v-middle mt-3" data-plugin="bootstrapTable"
                                        data-toolbar="#toolbar" data-search="true" data-search-align="left" data-show-export="true"
                                        data-show-columns="true" data-detail-view="false" data-mobile-responsive="true"
                                        data-pagination="true" data-page-list="[10, 25, 50, 100, ALL]">
                                        <thead>
                                            <tr>
                                                <th data-sortable="true" data-field="produk">Parameter</th>
                                                <th data-sortable="true" data-field="produk">Method test</th>
                                                <th data-sortable="true" data-field="produk">Unit</th>
                                                <th data-sortable="true" data-field="produk">Lim. Min</th>
                                                <th data-sortable="true" data-field="produk">Lim. Max</th>
                                                <th data-sortable="true" data-field="produk">Before</th>
                                                <th data-sortable="true" data-field="produk">After</th>
                                                <th data-sortable="true" data-field="produk">Distribution</th>
                                                <th data-sortable="true" data-field="produk">COQ</th>
                                                <th data-sortable="true" data-field="produk">Result</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($detail as $dv)
                                            <tr class="" data-id="17">
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm ">
                                                        {{ $dv->parameter }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        {{ $dv->metode }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm ">
                                                        {{ $dv->unit }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        {{ $dv->limit_min }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        {{ $dv->limit_max }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        @if($type == 'before')
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->before_value }}</span>
                                                        @else
                                                        <span class="badge badge-light text-uppercase p-1">{{ $dv->before_value }}</span>
                                                        @endif
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        @if($type == 'after')
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->after_value }}</span>
                                                        @else
                                                        <span class="badge badge-light text-uppercase p-1">{{ $dv->after_value }}</span>
                                                        @endif
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        @if($type == 'distribution')
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->distribution_value }}</span>
                                                        @else
                                                        <span class="badge badge-light text-uppercase p-1">{{ $dv->distribution_value }}</span>
                                                        @endif
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        @if($type == 'coq')
                                                        <span class="badge badge-info text-uppercase p-1">{{ $dv->coq_value }}</span>
                                                        @else
                                                        <span class="badge badge-light text-uppercase p-1">{{ $dv->coq_value }}</span>
                                                        @endif
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                                        <form action="{{ route('spesific-reports.update', $dv->id) }}" method="post">
                                                            @csrf
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <input name="value" type="text" class="form-control circle" placeholder="result" required>
                                                                    <input type="hidden" name="_method" value="PUT">
                                                                    <input type="hidden" name="type" value="{{ $type }}">
                                                                    <!-- <input type="hidden" name="type" value=""> -->
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <input type="submit" class="btn btn-sm btn-primary circle" value="Update">
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