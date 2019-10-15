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
                        <h2 class="text-md text-highlight">Refused Requests</h2>
                        <small class="text-muted">Daftar pengajuan yang telah disetujui</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <div class="mb-5">
                        <div class="toolbar ">
                            <div class="btn-group">
                                <button class="btn btn-sm btn-icon btn-white" data-toggle="tooltip" title=""
                                    id="btn-trash" data-original-title="Trash">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" class="feather feather-trash text-muted">
                                        <polyline points="3 6 5 6 21 6"></polyline>
                                        <path
                                            d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2">
                                        </path>
                                    </svg>
                                </button>
                                <button class="btn btn-sm btn-icon btn-white sort " data-sort="item-title"
                                    data-toggle="tooltip" title="" data-original-title="Sort">
                                    <i class="sorting"></i>
                                </button>
                            </div>
                            <form class="flex">
                                <div class="input-group">
                                    <input type="text" class="form-control form-control-theme form-control-sm search"
                                        placeholder="Search" required="">
                                    <span class="input-group-append">
                                        <button class="btn btn-white no-border btn-sm" type="button">
                                            <span class="d-flex text-muted"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="16" height="16" viewBox="0 0 24 24" fill="none"
                                                    stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                    stroke-linejoin="round" class="feather feather-search">
                                                    <circle cx="11" cy="11" r="8"></circle>
                                                    <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                                </svg></span>
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-theme table-row v-middle">
                                <thead>
                                    <tr>
                                        <th class="text-muted">Owner</th>
                                        <th class="text-muted sortable" data-toggle-class="asc">Name</th>
                                        <th class="text-muted"><span class="d-none d-sm-block">Produk</span></th>
                                        <th class="text-muted"><span class="d-none d-sm-block">Asal Sample</span></th>
                                        <th class="text-muted"><span class="d-none d-sm-block">Jenis Sample</span></th>
                                        <th class="text-muted"><span class="d-none d-sm-block">Rencana/Tgl Pengambilan</span></th>
                                        <th class="text-muted"><span class="d-none d-sm-block">Jenis Test</span></th>
                                        <th class="text-muted"><span class="d-none d-sm-block">Status</span></th>
                                        <th class="text-muted"><span class="d-none d-sm-block">Action</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($refused as $r)
                                    <tr class=" v-middle" data-id="{{ $r->id }}">
                                        <td>
                                            <div class="d-flex avatar-group">
                                                <a href="#" class="avatar w-32" data-toggle="tooltip" title=""
                                                    data-original-title="Libero">
                                                    <img src="{{ asset('basik/assets/img/a11.jpg') }}" alt=".">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="flex">
                                            <a href="music.detail.html" class="item-title text-color ">{{ ucwords($r->type) }}</a>
                                            <div class="item-except text-muted text-sm h-1x">
                                                {{ $r->no_surat }}
                                            </div>
                                        </td>
                                        <td>
                                            <span class="item-amount d-none d-sm-block text-sm">
                                                {{ ucwords($r->produk) }}
                                            </span>
                                        </td>
                                        <td>
                                            <span class="item-amount d-none d-sm-block text-sm">
                                                {{ ucwords($r->asal_sample) }}
                                            </span>
                                        </td>
                                        <td>
                                            <span class="item-amount d-none d-sm-block text-sm">
                                                {{ ucwords($r->jenis_sample) }}
                                            </span>
                                        </td>
                                        <td>
                                            <span class="item-amount d-none d-sm-block text-sm">
                                                {{ $r->tgl }}
                                            </span>
                                        </td>
                                        <td>
                                            <span class="item-amount d-none d-sm-block text-sm">
                                                {{ ucwords($r->jenis_test) }}
                                            </span>
                                        </td>
                                        <td>
                                            <span class="item-amount d-none d-sm-block text-sm">
                                                <span class="badge badge-warning text-uppercase p-1">{{ $r->status }}</span>
                                            </span>
                                        </td>
                                        <td>
                                            <span class="item-amount d-none d-sm-block text-sm">
                                                <a href="{{ route('requests.delete', $r->id) }}"><span class="badge badge-danger p-2">Delete</span></a>
                                            </span>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- pagination -->
                        {{ $refused }}
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
