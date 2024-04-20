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

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => ['admin','mpc:service_management']], function () {

    Route::group(['prefix' => 'vendor', 'as' => 'vendor.'], function () {
        Route::any('create', 'VendorController@create')->name('create');
        Route::post('store', 'VendorController@store')->name('store');
        Route::get('edit/{id}', 'VendorController@edit')->name('edit');
        Route::put('update/{id}', 'VendorController@update')->name('update');
        Route::any('status-update/{id}', 'VendorController@statusUpdate')->name('status-update');
        Route::any('featured-update/{id}', 'VendorController@featuredUpdate')->name('featured-update');
        Route::delete('delete/{id}', 'VendorController@destroy')->name('delete');
        Route::get('childes', 'VendorController@childes');
        Route::get('ajax-childes/{id}', 'VendorController@ajaxChildes')->name('ajax-childes');
        Route::get('ajax-childes-only/{id}', 'VendorController@ajaxChildesOnly')->name('ajax-childes-only');
        Route::get('download', 'VendorController@download')->name('download');
    });
});