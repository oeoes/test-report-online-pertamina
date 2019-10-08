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
                        <h2 class="text-md text-highlight">Master Data</h2>
                        <small class="text-muted">Add data</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <form action="{{ route('reports.store') }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <select name="produk" class="custom-select">
                                        <option disabled selected>Choose product</option>
                                        @foreach($option as $o)
                                        <option value="{{ $o }}">{{ ucwords($o) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <select name="parameter" class="custom-select">
                                        <option disabled selected>Choos parameter</option>
                                        @foreach($parameter as $p)
                                        <option value="{{ $p->name }}">{{ $p->name }}</option>
                                        @endforeach
                                    </select>
                                </div>                                
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="metode" type="text" class="form-control" placeholder="Method test..." required>
                                </div>                                
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="unit" type="text" class="form-control" placeholder="Unit..." required>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="limit_min" type="text" class="form-control" placeholder="Limitation min..." required>
                                </div>                                
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="limit_max" type="text" class="form-control" placeholder="Limitation max..." required>
                                </div>                                
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="" type="submit" class="btn btn-primary" value="Add">
                                </div>                                
                            </div>
                        </div>
                    </form>
                    <table id="table" class="table table-theme v-middle mt-3" data-plugin="bootstrapTable"
                        data-toolbar="#toolbar" data-search="true" data-search-align="left" data-show-export="true"
                        data-show-columns="true" data-detail-view="false" data-mobile-responsive="true"
                        data-pagination="true" data-page-list="[10, 25, 50, 100, ALL]">
                        <thead>
                            <tr>
                                <th data-sortable="true" data-field="owner">Owner</th>
                                <th data-sortable="true" data-field="produk">Produk</th>
                                <th data-sortable="true" data-field="produk">Parameter</th>
                                <th data-sortable="true" data-field="produk">Method test</th>
                                <th data-sortable="true" data-field="produk">Unit</th>
                                <th data-sortable="true" data-field="produk">Limitation min</th>
                                <th data-sortable="true" data-field="produk">Limitation max</th>
                                <th data-field="upload"><span class="d-none d-sm-block">Tag</span></th>
                                <th data-field="date"><span class="d-none d-sm-block">Date</span></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(sizeof($master) < 1)
                            <tr>
                                <td colspan="10" class="text-center">No data</td>
                            </tr>
                            @else
                            @foreach($master as $key => $m)
                            <tr class="" data-id="{{ $m->id }}">
                                <td>
                                    <a>
                                        <span class="w-32 avatar gd-warning">
                                            {{ strtoupper($m->user_email[0]) }}
                                        </span>
                                    </a>
                                </td>
                                <td class="flex">
                                    <a class="item-title text-color ">{{ ucwords($m->produk) }}</a>
                                    <div class="item-except text-muted text-sm h-1x">
                                        {{ $m->user_email }}
                                    </div>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $m->parameter }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                        {{ $m->metode }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $m->unit }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                        {{ $m->limit_min }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                        {{ $m->limit_max }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm ">
                                        {{ $m->tag }}
                                    </span>
                                </td>
                                <td>
                                    <span class="item-amount d-none d-sm-block text-sm [object Object]">
                                        {{ $m->created_at }}
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
                                            <a href="{{ route('reports.process', ['id' => $m->id, 'type' => 'before']) }}" class="dropdown-item edit">
                                                Report before discharge
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a href="{{ route('reports.delete', $m->id) }}" class="dropdown-item trash">
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
                    <form action="{{ route('reports.bundle') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Bundle</label>
                                <input name="tag" type="text" class="form-control" placeholder="input tag to bundle" required>
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" value="Bundle">
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- ############ Main END-->
    </div>
    <!-- ############ Content END-->
</div>

@endsection
