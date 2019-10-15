<div id="aside" class="page-sidenav no-shrink bg-light nav-dropdown fade" aria-hidden="true">
    <div class="sidenav h-100 bg-light modal-dialog">
        <!-- sidenav top -->
        <div class="navbar">
            <!-- brand -->
            <a href="" class="navbar-brand ">
                <!-- <svg width="32" height="32" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" fill="currentColor">
                    <g class="loading-spin" style="transform-origin: 256px 256px">
                        <path d="M200.043 106.067c-40.631 15.171-73.434 46.382-90.717 85.933H256l-55.957-85.933zM412.797 288A160.723 160.723 0 0 0 416 256c0-36.624-12.314-70.367-33.016-97.334L311 288h101.797zM359.973 134.395C332.007 110.461 295.694 96 256 96c-7.966 0-15.794.591-23.448 1.715L310.852 224l49.121-89.605zM99.204 224A160.65 160.65 0 0 0 96 256c0 36.639 12.324 70.394 33.041 97.366L201 224H99.204zM311.959 405.932c40.631-15.171 73.433-46.382 90.715-85.932H256l55.959 85.932zM152.046 377.621C180.009 401.545 216.314 416 256 416c7.969 0 15.799-.592 23.456-1.716L201.164 288l-49.118 89.621z"></path>
                    </g>
                </svg> -->
                <img src="{{ asset('images/logo.png') }}" alt="" srcset="" style="width: 100px;">
                <!-- <img src="../assets/img/logo.png" alt="..."> -->
                <span class="hidden-folded d-inline l-s-n-1x " style="font-size: 90%; font-weight: 200;">Pertamina</span>
            </a>
            <!-- / brand -->
        </div>
        <!-- Flex nav content -->
        <div class="flex scrollable hover">
            <div class="nav-active-text-primary" data-nav>
                <ul class="nav bg">
                    <li class="nav-header hidden-folded">
                        <span class="text-muted">Main</span>
                    </li>
                    <li class="active">
                        <a href="{{ route('home') }}">
                            <span class="nav-icon text-primary"><i data-feather='home'></i></span>
                            <span class="nav-text">Quality Discrepancy</span>
                        </a>
                    </li>
                    @if(auth()->user()->role == 'maintainer')
                    <li>
                        <a href="{{ route('spesific-reports.index') }}">
                            <span class="nav-icon text-primary"><i data-feather='folder'></i></span>
                            <span class="nav-text">
                            Print Approval
                            @if($print_approve > 0)
                            <span class="badge bg-success-lt float-right">{{ $print_approve }}</span>
                            @else
                            @endif
                            </span>
                        </a>
                    </li>
                    @endif

                    @if(auth()->user()->role == 'maintainer')
                    <!-- monitoring kegiatan -->
                    <li class="nav-header hidden-folded">
                        <span class="text-muted">Manage Users</span>
                    </li>
                    <li>
                        <a href="{{ route('users.index') }}">
                            <span class="nav-icon text-primary"><i data-feather='users'></i></span>
                            <span class="nav-text">List of Users</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('users.create') }}">
                            <span class="nav-icon text-primary"><i data-feather='user-plus'></i></span>
                            <span class="nav-text">Invite user</span>
                        </a>
                    </li>
                    @endif
                    
                    @if(auth()->user()->role == 'lv1' || auth()->user()->role == 'maintainer')
                    <!-- permintaan pengujian -->
                    <li class="nav-header hidden-folded">
                        <span class="text-muted">Permintaan Pengujian</span>
                    </li>
                    <li>
                        <a href="{{ route('requests.index') }}">
                            <span class="nav-icon text-success"><i data-feather='clipboard'></i></span>
                            <span class="nav-text">Pengantar Sample</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('reservations.index') }}">
                            <span class="nav-icon text-success"><i data-feather='monitor'></i></span>
                            <span class="nav-text">Reservasi</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('requests.approved') }}">
                            <span class="nav-icon text-success"><i data-feather='mail'></i></span>
                            <span class="nav-text">Approved Request</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('requests.refused') }}">
                            <span class="nav-icon text-danger"><i data-feather='mail'></i></span>
                            <span class="nav-text">Refused Request</span>
                        </a>
                    </li>
                    @endif

                    @if(auth()->user()->role == 'lv2' || auth()->user()->role == 'maintainer')
                    <!-- monitoring kegiatan -->
                    <li class="nav-header hidden-folded">
                        <span class="text-muted">Monitoring Kegiatan</span>
                    </li>
                    <li>
                        <a href="{{ route('inboxes.index') }}">
                            <span class="nav-icon text-danger"><i data-feather='mail'></i></span>
                            <span class="nav-text">Surat Masuk 
                            @if($kotak_masuk > 0)
                            <span class="badge bg-danger-lt float-right">{{ $kotak_masuk }} new</span>
                            @else
                            @endif
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('details.index') }}">
                            <span class="nav-icon text-danger"><i data-feather='refresh-ccw'></i></span>
                            <span class="nav-text">Detail Proses 
                            @if($process > 0)
                            <span class="badge bg-primary-lt float-right">{{ $process }} process</span>
                            @else
                            @endif
                            </span>
                        </a>
                    </li>
                    @endif

                    @if(auth()->user()->role == 'lv2' || auth()->user()->role == 'maintainer')
                    <!-- test report -->
                    <li class="nav-header hidden-folded">
                        <span class="text-muted">Online Test Report</span>
                    </li>
                    <li>
                        <a href="{{ route('reports.index') }}">
                            <span class="nav-icon text-info"><i data-feather='file'></i></span>
                            <span class="nav-text">Master Data</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('reports.coq') }}">
                            <span class="nav-icon text-info"><i data-feather='info'></i></span>
                            <span class="nav-text">COQ</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('reports.before') }}">
                            <span class="nav-icon text-info"><i data-feather='user'></i></span>
                            <span class="nav-text">Before Discharge</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('reports.after') }}">
                            <span class="nav-icon text-info"><i data-feather='user-check'></i></span>
                            <span class="nav-text">After Received</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('reports.distribution') }}">
                            <span class="nav-icon text-info"><i data-feather='truck'></i></span>
                            <span class="nav-text">Penyaluran</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('parameters.index') }}">
                            <span class="nav-icon text-info"><i data-feather='tag'></i></span>
                            <span class="nav-text">Parameter</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- ############ Aside END-->