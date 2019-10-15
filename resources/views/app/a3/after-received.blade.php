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
                                <th data-sortable="true" data-field="owner">Owner</th>
                                <th data-sortable="true" data-field="produk">Produk</th>
                                <th data-sortable="true" data-field="produk">Issuer</th>
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
                            <tr class="" data-id="{{ $a->id }}">
                                <td>
                                    <a href="{{ route('spesific-reports.show-detail', ['flag' => $a->flag, 'type' => 'after']) }}">
                                        <span class="w-32 avatar gd-warning">
                                            {{ strtoupper($a->issuer[0]) }}
                                        </span>
                                    </a>
                                </td>
                                <td class="flex">
                                    <a href="{{ route('spesific-reports.show-detail', ['flag' => $a->flag, 'type' => 'after']) }}" class="item-title text-color ">{{ ucwords($a->produk) }}</a>
                                    <div class="item-except text-muted text-sm h-1x">
                                        {{ $a->issuer }}
                                    </div>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $a->issuer }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                        {{ $a->created_at->diffForHumans() }}
                                    </span>
                                </td>
                                <td>
                                    <div class="item-action dropdown">
                                        <a href="#" data-toggle="dropdown" class="text-muted">
                                            <i data-feather="more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right bg-black" role="menu">
                                            <!-- <div class="dropdown-divider"></div> -->
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
                    <!-- pagination -->
                    {{ $after }}
                </div>
            </div>
        </div>
        <!-- ############ Main END-->
    </div>
    <!-- ############ Content END-->
</div>

@endsection
