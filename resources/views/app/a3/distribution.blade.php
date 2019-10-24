@extends('layouts.master')

@section('content')

@include('layouts.sidenav')
<div id="app" class="layout-column flex">
    @include('layouts.header')
    <!-- ############ Content START-->
    <div id="content" class="flex ">
        <!-- ############ Main START-->
        <div>
            <div class="page-hero page-container " id="page-hero">
                <div class="padding d-flex">
                    <div class="page-title">
                        <h2 class="text-md text-highlight">Distribution</h2>
                        <small class="text-muted">Report test at distribution</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">

                    <distribution-report></distribution-report>
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card p-3">
                                <div class="h4">Distribution Discharge Lists</div>
                                <hr>

                                <table id="table" class="table table-theme v-middle mt-3" data-plugin="bootstrapTable"
                                    data-toolbar="#toolbar" data-search="true" data-search-align="left" data-show-export="true"
                                    data-show-columns="true" data-detail-view="false" data-mobile-responsive="true"
                                    data-pagination="true" data-page-list="[10, 25, 50, 100, ALL]">
                                    <thead>
                                        <tr>
                                            <th data-sortable="true" data-field="owner">#</th>
                                            <th data-sortable="true" data-field="produk">Produk</th>
                                            <th data-field="date"><span class="d-sm-block">Date</span></th>
                                            <th data-sortable="true" data-field="produk">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if(sizeof($distribution) < 1)
                                        <tr>
                                            <td colspan="10" class="text-center">No data</td>
                                        </tr>
                                        @else     
                                        @foreach($distribution as $d)                           
                                        <tr class="" data-id="">
                                            <td>
                                                <a href="">
                                                    <span class="w-32 avatar gd-warning">
                                                        {{ $d->product_name[0] }}
                                                    </span>
                                                </a>
                                            </td>
                                            <td class="flex">
                                                <a href=""></a>
                                                <div class="item-except text-muted text-sm h-1x">
                                                    {{ $d->product_name }}
                                                </div>
                                            </td>
                                            <td>
                                                <span class="item-amount d-sm-block text-sm ">
                                                    {{ $d->date }}
                                                </span>
                                            </td>
                                            <td>
                                                <span class="item-amount d-sm-block text-sm ">
                                                    <a href="{{ route('distribution-reports.show-detail', ['id' => $d->id, 'date' => $d->date, 'type' => $type]) }}" class="btn btn-sm btn-primary pl-3 pr-3 circle">View</a>
                                                </span>
                                            </td>
                                        </tr>
                                        @endforeach
                                        @endif
                                    </tbody>
                                </table>
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
