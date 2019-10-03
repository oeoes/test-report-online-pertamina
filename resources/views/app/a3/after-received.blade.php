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
                        <h2 class="text-md text-highlight">After Received</h2>
                        <small class="text-muted">Report test at after received</small>
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
                                <th data-sortable="true" data-field="id">ID</th>
                                <th data-sortable="true" data-field="owner">Owner</th>
                                <th data-sortable="true" data-field="produk">Produk</th>
                                <th data-sortable="true" data-field="produk">Parameter</th>
                                <th data-sortable="true" data-field="produk">Method test</th>
                                <th data-sortable="true" data-field="produk">Unit</th>
                                <th data-sortable="true" data-field="produk">Limitation min</th>
                                <th data-sortable="true" data-field="produk">Limitation max</th>
                                <th data-sortable="true" data-field="produk">Result</th>
                                <th data-field="upload"><span class="d-none d-sm-block">Uploaded by</span></th>
                                <th data-field="date"><span class="d-none d-sm-block">Date</span></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(sizeof($after) < 1)
                            <tr>
                                <td colspan="10" class="text-center">No data</td>
                            </tr>
                            @else
                            @foreach($after as $a)
                            <tr class="" data-id="17">
                                <td style="min-width:30px;text-align:center">
                                    <small class="text-muted">{{ $a->id }}</small>
                                </td>
                                <td>
                                    <a href="music.detail.html">
                                        <span class="w-32 avatar gd-warning">
                                            {{ strtoupper($a->user_email[0]) }}
                                        </span>
                                    </a>
                                </td>
                                <td class="flex">
                                    <a href="music.detail.html" class="item-title text-color ">{{ ucwords($a->produk) }}</a>
                                    <div class="item-except text-muted text-sm h-1x">
                                        AI wil
                                    </div>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $a->parameter }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm">
                                        {{ $a->metode }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $a->unit }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm">
                                        {{ $a->limit_min }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm">
                                        {{ $a->limit_max }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm">
                                        {{ $a->result }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $a->user_email }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm">
                                        {{ $a->created_at }}
                                    </span>
                                </td>
                                <td>
                                    <div class="item-action dropdown">
                                        <a href="#" data-toggle="dropdown" class="text-muted">
                                            <i data-feather="more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right bg-black" role="menu">
                                            <a class="dropdown-item edit">
                                                Edit
                                            </a>
                                            <a href="{{ route('reports.process', ['id' => $a->id, 'type' => 'distribution']) }}" class="dropdown-item edit">
                                                Report distribution
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a href="{{ route('reports.delete', $a->id) }}" class="dropdown-item trash">
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
                </div>
            </div>
        </div>
        <!-- ############ Main END-->
    </div>
    <!-- ############ Content END-->
</div>

@endsection
