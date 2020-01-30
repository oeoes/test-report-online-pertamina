@extends('layouts.master')

@section('custom-css')
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css"
   integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
   crossorigin=""/>
<link rel="stylesheet" href="{{ asset('dist/leaflet-routing-machine.css') }}">
<style>
    .form-group {
        margin-bottom: 0!important
    }
</style>
@endsection
 
@section('js-leaflet')
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"
   integrity="sha512-gZwIG9x3wUXg2hdXF6+rVkLF/0Vi9U8D2Ntg4Ga5I5BZpVkVxlJWbSQtXPSiUTtC0TjtGOmxa1AJPuV0CPthew=="
   crossorigin=""></script>
<script src="{{ asset('dist/leaflet-routing-machine.js') }}"></script>
@endsection

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
                        <h2 class="text-md text-highlight">Detail Process</h2>
                        <small class="text-muted">Record detail process</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            
            @include('app.a2.detail-content')

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

@section('custom-js')
<script>
    var user_id = "{!! auth()->user()->id!!}"
    var request_id = "{!! $detail->id!!}"
    var user_email = "{!! auth()->user()->email !!}"
    var tracked_email = "{!! $detail->accepted_by !!}"
    var progress = "{!! $detail->progress !!}"
</script>
<script src="{{ asset('js/tracking.js') }}"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
@endsection