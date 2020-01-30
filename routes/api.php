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

Route::middleware('cors')->group(function() {
    Route::resource('products', 'ProductController');
    Route::resource('masters', 'MasterDataController');
    Route::resource('coq-reports', 'CoqReportController');
    Route::resource('before-reports', 'BeforeReportController');
    Route::resource('after-reports', 'AfterReportController');
    Route::resource('distribution-reports', 'DistributionReportController');
    Route::resource('test-prices', 'TestPriceController');
});
Route::post('print/test-prices', 'TestPriceController@printTestPrice');

Route::get('tracks/lookup/{user_id}/{request_id}', 'TruckLocationController@truckLookup');
Route::get('tracks/locate/{user_id}/{request_id}', 'TruckLocationController@getLocation');
Route::post('tracks/setloc', 'TruckLocationController@setLocation');

Route::resource('users/tracking', 'UserController');