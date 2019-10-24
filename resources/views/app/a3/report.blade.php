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
                                    <a href="{{ route('spesific-reports.print', ['id' => $title[0]->id, 'date' => $title[0]->date, 'type' => $type]) }}" class="btn btn-sm btn-primary float-right circle pr-3 pl-3">Print</a>                                 

                                </div>
                                <div class="card-body"> 
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Produk</label>
                                        <div class="col-sm-4 detail-form">
                                            {{ $title[0]->product_name }}
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Released Date</label>
                                        <div class="col-sm-4 detail-form">
                                            {{ $title[0]->date }}
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
                                                <th data-sortable="true" data-field="produk">Limitation Min</th>
                                                <th data-sortable="true" data-field="produk">Limitation Max</th>
                                                <th data-sortable="true" data-field="produk"></th>
                                                <th data-sortable="true" data-field="produk">Result</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- foreach -->
                                            @foreach($data as $k => $d)
                                            <tr class="" data-id="17">
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm ">
                                                        {{ $d->parameter }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm">
                                                        {{ $d->metode }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm ">
                                                        {{ $d->unit }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm">
                                                        {{ $d->limit_min }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm">
                                                        {{ $d->limit_max }}
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm">
                                                        <span class="badge badge-info text-uppercase p-1"></span>
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="item-amount d-none d-sm-block text-sm">
                                                        {{ $value[$k] }}
                                                    </span>
                                                </td>
                                            </tr>
                                            @endforeach
                                            <!-- endforeach -->
                                            
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
</div>

@endsection