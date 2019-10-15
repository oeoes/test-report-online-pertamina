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
                        <h2 class="text-md text-highlight">Completed Test Report</h2>
                        <small class="text-muted">List of Tests Need your Confirmation</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <table id="table" class="table table-theme v-middle mt-3" data-plugin="bootstrapTable"
                        data-toolbar="#toolbar" data-search="true" data-search-align="left" data-show-export="true"
                        data-show-columns="true" data-detail-view="false" data-mobile-responsive="true"
                        data-pagination="true" data-page-list="[10, 25, 50, 100, ALL]">
                        <thead>
                            <tr>
                                <th data-sortable="true" data-field="owner">Owner</th>
                                <th data-sortable="true" data-field="produk">Produk</th>
                                <th data-sortable="true" data-field="produk">Issuer</th>
                                <th data-sortable="true" data-field="produk">Type</th>
                                <th data-sortable="true" data-field="produk">Print Request</th>
                                <th data-field="date"><span class="d-none d-sm-block">Released at</span></th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(sizeof($print) < 1)
                            <tr>
                                <td colspan="10" class="text-center">No data</td>
                            </tr>
                            @else
                            @foreach($print as $p)
                            <tr class="" data-id="{{ $p->id }}">
                                <td>
                                    <a>
                                        <span class="w-32 avatar gd-warning">
                                            {{ strtoupper($p->issuer[0]) }}
                                        </span>
                                    </a>
                                </td>
                                <td class="flex">
                                    <a class="item-title text-color ">{{ ucwords($p->produk) }}</a>
                                    <div class="item-except text-muted text-sm h-1x">
                                        {{ $p->issuer }}
                                    </div>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $p->issuer }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ strtoupper($p->type) }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        @if($p->type == 'coq')
                                            @if($p->print_coq == 1)
                                            <span class="badge badge-warning text-uppercase p-1">waiting</span>
                                            @else
                                            <span class="badge badge-info text-uppercase p-1">Approved</span>
                                            @endif
                                        @elseif($p->type == 'before')
                                            @if($p->print_before == 1)
                                            <span class="badge badge-warning text-uppercase p-1">waiting</span>
                                            @else
                                            <span class="badge badge-info text-uppercase p-1">Approved</span>
                                            @endif
                                        @elseif($p->type == 'after')
                                            @if($p->print_after == 1)
                                            <span class="badge badge-warning text-uppercase p-1">waiting</span>
                                            @else
                                            <span class="badge badge-info text-uppercase p-1">Approved</span>
                                            @endif
                                        @else
                                            @if($p->print_distribution == 1)
                                            <span class="badge badge-warning text-uppercase p-1">waiting</span>
                                            @else
                                            <span class="badge badge-info text-uppercase p-1">Approved</span>
                                            @endif
                                        @endif
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                        {{ $p->created_at->diffForHumans() }}
                                    </span>
                                </td>
                                <td>
                                    <div class="item-action dropdown">
                                        <a href="#" data-toggle="dropdown" class="text-muted">
                                            <i data-feather="more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right bg-black" role="menu">
                                            <a href="{{ route('spesific-reports.request-print', ['flag' => $p->flag, 'type' => $p->type]) }}" class="dropdown-item edit">
                                                Approve
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a href="{{ route('reports.delete', $p->id) }}" class="dropdown-item trash">
                                                Delete item
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                            @endif
                        </tbody>
                    </table>
                    <!-- pagination -->
                    {{ $print }}
                </div>
            </div>
        </div>
        <!-- ############ Main END-->
    </div>
    <!-- ############ Content END-->
</div>

@endsection
