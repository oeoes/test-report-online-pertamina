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
                        <h2 class="text-md text-highlight">Quality Discrepancy</h2>
                        <small class="text-muted">Below is the graphic of quality discrepancy</small>
                    </div>
                    <div class="flex"></div>
                </div>
            </div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <div class="row">
                    <!-- summary -->
                        <div class="col-sm-8 col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    Graphic of <span id="namaparameter"></span>
                                </div>
                                <div class="card-body" style="min-height: 360px">
                                    <canvas id="chart-line">
                                    </canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-4">
                            <div class="card">
                                <div class="card-header">
                                    Summary
                                </div>
                                <div class="card-body" style="min-height: 200px">
                                    <form action="">
                                        <div class="form-group">
                                            <label>Parameter</label>
                                            <select name="" id="select_parameter" class="custom-select">
                                                @foreach($parameter as $p)
                                                <option value="{{ $p->id }}">{{ $p->parameter }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Produk</label>
                                            <select name="" id="product_id" class="custom-select">
                                                @foreach($product as $pr)
                                                <option value="{{ $pr->id }}">{{ $pr->product_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>From</label>
                                            <input id="select_date_from" type="date" class="form-control">
                                        </div>

                                        <div class="form-group">
                                            <label>To</label>
                                            <input id="select_date_to" type="date" class="form-control">
                                        </div>
                                    </form>
                                    <div id="change" class="btn btn-primary circle">View <i class="ml-2" data-feather="search"></i></div>
                                    
                                </div>
                            </div>
                        </div>

                        <!-- COQ -->
                        <div class="col-sm-3 col-md-3">
                            <div class="card">
                                <div class="card-header">
                                    Select Range for COQ
                                </div>
                                <div class="card-body" style="min-height: 200px">
                                    <form action="">
                                        <div class="form-group">
                                            <label>From</label>
                                            <input id="coq_from" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>To</label>
                                            <input id="coq_to" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Parameter</label>
                                            <select name="" id="coq_param_id" class="custom-select">
                                                @foreach($parameter as $p)
                                                <option value="{{ $p->id }}">{{ $p->parameter }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Produk</label>
                                            <select name="" id="coq_product_id" class="custom-select">
                                                @foreach($product as $pr)
                                                <option value="{{ $pr->id }}">{{ $pr->product_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </form>
                                    <div id="change_coq" class="btn btn-primary circle">View <i class="ml-2" data-feather="search"></i></div>
                                </div>
                            </div>
                        </div>  
                        <div class="col-sm-9 col-md-9">
                            <div class="card">
                                <div class="card-header">
                                    COQ
                                </div>
                                <div class="card-body" style="min-height: 360px">
                                    <canvas id="coq">
                                    </canvas>
                                </div>
                            </div>
                        </div>                      
                        <!-- end of COQ -->


                        <!-- before -->
                        <div class="col-sm-9 col-md-9">
                            <div class="card">
                                <div class="card-header">
                                    Before Discharge
                                </div>
                                <div class="card-body" style="min-height: 360px">
                                    <canvas id="before">
                                    </canvas>
                                </div>
                            </div>
                        </div> 
                        <div class="col-sm-3 col-md-3">
                            <div class="card">
                                <div class="card-header">
                                    Select Range Before Dischare
                                </div>
                                <div class="card-body" style="min-height: 200px">
                                    <form action="">
                                        <div class="form-group">
                                            <label>From</label>
                                            <input id="before_from" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>To</label>
                                            <input id="before_to" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Parameter</label>
                                            <select name="" id="before_param_id" class="custom-select">
                                                @foreach($parameter as $p)
                                                <option value="{{ $p->id }}">{{ $p->parameter }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Produk</label>
                                            <select name="" id="before_product_id" class="custom-select">
                                                @foreach($product as $pr)
                                                <option value="{{ $pr->id }}">{{ $pr->product_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </form>
                                    <div id="change_before" class="btn btn-primary circle">View <i class="ml-2" data-feather="search"></i></div>
                                </div>
                            </div>
                        </div>                       
                        <!-- end of before -->


                        <!-- after -->
                        <div class="col-sm-3 col-md-3">
                            <div class="card">
                                <div class="card-header">
                                    Select Range After Received
                                </div>
                                <div class="card-body" style="min-height: 200px">
                                    <form action="">
                                        <div class="form-group">
                                            <label>From</label>
                                            <input id="after_from" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>To</label>
                                            <input id="after_to" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Parameter</label>
                                            <select name="" id="after_param_id" class="custom-select">
                                                @foreach($parameter as $p)
                                                <option value="{{ $p->id }}">{{ $p->parameter }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Produk</label>
                                            <select name="" id="after_product_id" class="custom-select">
                                                @foreach($product as $pr)
                                                <option value="{{ $pr->id }}">{{ $pr->product_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </form>
                                    <div id="change_after" class="btn btn-primary circle">View <i class="ml-2" data-feather="search"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-9 col-md-9">
                            <div class="card">
                                <div class="card-header">
                                    After Received
                                </div>
                                <div class="card-body" style="min-height: 360px">
                                    <canvas id="after">
                                    </canvas>
                                </div>
                            </div>
                        </div>                        
                        <!-- end of after -->

                        <!-- distribution -->
                        <div class="col-sm-9 col-md-9">
                            <div class="card">
                                <div class="card-header">
                                    Distribution
                                </div>
                                <div class="card-body" style="min-height: 360px">
                                    <canvas id="distribution">
                                    </canvas>
                                </div>
                            </div>
                        </div>  
                        <div class="col-sm-3 col-md-3">
                            <div class="card">
                                <div class="card-header">
                                    Select Range of Distribution
                                </div>
                                <div class="card-body" style="min-height: 200px">
                                    <form action="">
                                        <div class="form-group">
                                            <label>From</label>
                                            <input id="distribution_from" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>To</label>
                                            <input id="distribution_to" type="date" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Parameter</label>
                                            <select name="" id="distribution_param_id" class="custom-select">
                                                @foreach($parameter as $p)
                                                <option value="{{ $p->id }}">{{ $p->parameter }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Produk</label>
                                            <select name="" id="distribution_product_id" class="custom-select">
                                                @foreach($product as $pr)
                                                <option value="{{ $pr->id }}">{{ $pr->product_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </form>
                                    <div id="change_distribution" class="btn btn-primary circle">View <i class="ml-2" data-feather="search"></i></div>
                                </div>
                            </div>
                        </div>                      
                        <!-- end of distribution -->

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

@section('custom-js')
<script>
    var email = {!! json_encode($user) !!}
    window.localStorage.setItem('email', email)
</script>
@endsection