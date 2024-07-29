<?php

use Illuminate\Support\Facades\Route;

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


Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => ['admin', 'mpc:driver_module']], function () {
    Route::group(['prefix' => 'driver', 'as' => 'driver.'], function () {
        Route::any('list', 'DriverController@index')->name('index');
        Route::any('create', 'DriverController@create')->name('create');
        Route::post('store', 'DriverController@store')->name('store');
        Route::get('edit/{id}', 'DriverController@edit')->name('edit');
        Route::put('update/{id}', 'DriverController@update')->name('update');
        Route::any('status-update/{id}', 'DriverController@statusUpdate')->name('status-update');
        Route::delete('delete/{id}', 'DriverController@destroy')->name('delete');
        Route::any('download', 'DriverController@download')->name('download');
    });
});

Route::group(['prefix' => 'provider', 'as' => 'provider.', 'middleware' => ['provider']], function () {
    Route::group(['prefix' => 'driver', 'as' => 'driver.'], function () {
        Route::any('list', 'ProviderDriverController@index')->name('index');
        Route::any('create', 'ProviderDriverController@create')->name('create');
        Route::post('store', 'ProviderDriverController@store')->name('store');
        Route::get('edit/{id}', 'ProviderDriverController@edit')->name('edit');
        Route::put('update/{id}', 'ProviderDriverController@update')->name('update');
        Route::any('status-update/{id}', 'ProviderDriverController@statusUpdate')->name('status-update');
        Route::delete('delete/{id}', 'ProviderDriverController@destroy')->name('delete');
        Route::any('download', 'ProviderDriverController@download')->name('download');
    });
});