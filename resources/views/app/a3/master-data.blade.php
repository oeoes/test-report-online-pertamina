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
                        <h2 class="text-md text-highlight">Master Data</h2>
                        <small class="text-muted">Add data</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <!-- Master data -->
                    <master-data></master-data>
                </div>
            </div>
        </div>
        <!-- ############ Main END-->
    </div>
    <!-- ############ Content END-->
</div>

@endsection

@section('custom-js')
<script>
    var email = {!! json_encode($user) !!}
    window.localStorage.setItem('email', email)
</script>
@endsection