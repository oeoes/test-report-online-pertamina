<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('products', 'ProductController');
Route::resource('masters', 'MasterDataController');
Route::resource('coq-reports', 'CoqReportController');
Route::resource('before-reports', 'BeforeReportController');
Route::resource('after-reports', 'AfterReportController');
Route::resource('distribution-reports', 'DistributionReportController');