<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function() {
    return redirect('/login/page');
});

Route::prefix('app')->middleware('auth')->group(function() {
    Route::get('home', 'AuthController@home')->name('home');

    // maintainer
    Route::resource('users', 'UserController');

    // permintaan pengujian
    Route::resource('requests', 'TestRequestController');
    Route::get('approved/requests', 'TestRequestController@approvedList')->name('requests.approved');
    Route::get('refused/requests', 'TestRequestController@refusedList')->name('requests.refused');
    Route::get('delete/requests/{id}', 'TestRequestController@delete')->name('requests.delete');

    Route::resource('reservations', 'ReservationController');

    // monitoring kegiatan
    Route::resource('inboxes', 'InboxController');
    Route::get('inboxes/refuse/{id}', 'InboxController@refuseRequest')->name('inboxes.refuse');

    // detail
    Route::resource('details', 'DetailProcessController');
    Route::get('change/details/{id}/{type}', 'DetailProcessController@changeState')->name('details.change.state');

    // test report
    Route::resource('reports', 'TestReportController');
    Route::get('reports/delete/{id}', 'TestReportController@delete')->name('reports.delete');
    Route::get('reports/test/process/{id?}/{type?}', 'TestReportController@process')->name('reports.process'); // create master data

    // test report page
    Route::get('reports/test/before', 'TestReportController@beforeDischarge')->name('reports.before');
    Route::get('reports/test/after', 'TestReportController@afterReceived')->name('reports.after');
    Route::get('reports/test/coq', 'TestReportController@coq')->name('reports.coq');
    Route::get('reports/test/distribution', 'TestReportController@distribution')->name('reports.distribution');

    // test report --> bundle record
    Route::post('repports/test/bundle', 'TestReportController@bundleRecord')->name('reports.bundle');

    // spesific report
    Route::resource('spesific-reports', 'SpesificReportController');
    Route::get('spesific-reports/{flag}/show/{type}/detail', 'SpesificReportController@showSpesificReport')->name('spesific-reports.show-detail');
    Route::get('spesific-reports/{flag}/request/{type}/print', 'SpesificReportController@requestPrint')->name('spesific-reports.request-print');
    // spesific report --> download test report
    Route::get('spesific-reports/report/{id}/print/{date}/{type}', 'SpesificReportController@printTestReport')->name('spesific-reports.print');
    
    // parameter
    Route::resource('products', 'ProductController');

    // graphic
    Route::get('graphics/category/{parameter?}/{date?}', 'GraphicController@reportCategory')->name('graphics.category');
    Route::get('graphics/before/{from?}/{to?}', 'GraphicController@before')->name('graphics.before');
    Route::get('graphics/coq/{from?}/{to?}', 'GraphicController@coq')->name('graphics.coq');
    Route::get('graphics/after/{from?}/{to?}', 'GraphicController@after')->name('graphics.after');
    Route::get('graphics/distribution/{from?}/{to?}', 'GraphicController@distribution')->name('graphics.distribution');

    // release report
    Route::resource('release', 'ReleaseReportController');


    // -----------yang baru--------------
    Route::get('coq-reports/{id}/{date}/{type}', 'Reports\CoqReportController@showCoqDetail')->name('coq-reports.show-detail');
    Route::get('before-reports/{id}/{date}/{type}', 'Reports\BeforeReportController@showBeforeDetail')->name('before-reports.show-detail');
    Route::get('after-reports/{id}/{date}/{type}', 'Reports\AfterReportController@showAfterDetail')->name('after-reports.show-detail');
    Route::get('distribution-reports/{id}/{date}/{type}', 'Reports\DistributionReportController@showDistributionDetail')->name('distribution-reports.show-detail');
});
Route::get('signout', 'AuthController@signOut')->name('user.signout');
Route::post('login', 'AuthController@login')->name('user.login');
Route::get('login/page', 'AuthController@index')->name('user.login.page');
Route::get('join/page', 'AuthController@joinPage')->name('user.join.page');
Route::post('join', 'AuthController@join')->name('user.join');
Route::post('complete', 'AuthController@completeUser')->name('user.complete');
