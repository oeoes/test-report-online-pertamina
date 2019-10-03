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
    return redirect('/users');
});

Route::prefix('app')->middleware('auth')->group(function() {
    Route::get('home', 'AuthController@home')->name('home');

    // permintaan pengujian
    Route::resource('requests', 'TestRequestController');
    Route::get('approved/requests', 'TestRequestController@approvedList')->name('requests.approved');
    Route::get('refused/requests', 'TestRequestController@refusedList')->name('requests.refused');
    Route::get('delete/requests/{id}', 'TestRequestController@delete')->name('requests.delete');

    Route::resource('reservations', 'ReservationController');

    // monitoring kegiatan
    Route::resource('inboxes', 'InboxController');
    Route::get('inboxes/refuse/{id}', 'InboxController@refuseRequest')->name('inboxes.refuse');
    Route::resource('details', 'DetailProcessController');

    // test report
    Route::resource('reports', 'TestReportController');
    Route::get('reports/delete/{id}', 'TestReportController@delete')->name('reports.delete');
    Route::get('reports/test/process/{id?}/{type?}', 'TestReportController@process')->name('reports.process');

    Route::get('reports/test/before', 'TestReportController@beforeDischarge')->name('reports.before');
    Route::post('reports/test/process/add', 'TestReportController@processTestReport')->name('reports.before.add');

    Route::get('reports/test/after', 'TestReportController@afterReceived')->name('reports.after');
    Route::get('reports/test/coq', 'TestReportController@coq')->name('reports.coq');
    Route::get('reports/test/distribution', 'TestReportController@distribution')->name('reports.distribution');
});
Route::get('signout', 'AuthController@signOut')->name('user.signout');
Route::post('login', 'AuthController@login')->name('user.login');
Route::resource('users', 'AuthController');