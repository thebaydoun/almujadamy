<?php

use Illuminate\Support\Facades\Route;
use Modules\ServiceManagement\Http\Controllers\Web\Admin\ServiceRequestController;
use Modules\ServiceManagement\Http\Controllers\Web\Provider\ServiceController;

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Web\Admin', 'middleware' => ['admin','mpc:service_management']], function () {

    Route::group(['prefix' => 'service', 'as' => 'service.'], function () {
        Route::any('list', 'ServiceController@index')->name('index');
        Route::any('create', 'ServiceController@create')->name('create');
        Route::post('store', 'ServiceController@store')->name('store');
        Route::any('detail/{id}', 'ServiceController@show')->name('detail');
        Route::get('edit/{id}', 'ServiceController@edit')->name('edit');
        Route::put('update/{id}', 'ServiceController@update')->name('update');
        Route::any('status-update/{id}', 'ServiceController@statusUpdate')->name('status-update');
        Route::delete('delete/{id}', 'ServiceController@destroy')->name('delete');
        Route::any('download', 'ServiceController@download')->name('download');

        Route::get('request/list', [ServiceRequestController::class, 'requestList'])->name('request.list');
        Route::post('request/update/{id}', [ServiceRequestController::class, 'updateStatus'])->name('request.update');

        //ajax routes
        Route::any('ajax-add-variant', 'ServiceController@ajaxAddVariant')->name('ajax-add-variant')->withoutMiddleware('csrf');
        Route::any('ajax-remove-variant/{variant_key}', 'ServiceController@ajaxRemoveVariant')->name('ajax-remove-variant')->withoutMiddleware('csrf');
        Route::any('ajax-delete-db-variant/{variant_key}/{service_id}', 'ServiceController@ajaxDeleteDbVariant')->name('ajax-delete-db-variant')->withoutMiddleware('csrf');
    });

    Route::group(['prefix' => 'faq', 'as' => 'faq.'], function () {
        Route::post('store/{service_id}', 'FAQController@store')->name('store');
        Route::get('edit/{id}', 'FAQController@edit')->name('edit');
        Route::any('update/{id}', 'FAQController@update')->name('update');
        Route::any('status-update/{id}', 'FAQController@statusUpdate')->name('status-update');
        Route::any('delete/{id}/{service_id}', 'FAQController@destroy')->name('delete');
    });
});



Route::group(['prefix' => 'provider', 'as' => 'provider.', 'namespace' => 'Web\Provider', 'middleware' => ['provider']], function () {

    Route::group(['prefix' => 'service', 'as' => 'services.'], function () {
        Route::any('list', 'ServiceController@index')->name('index');
        Route::any('create', 'ServiceController@create')->name('create');
        Route::post('store', 'ServiceController@store')->name('store');
        Route::any('detail/{id}', 'ServiceController@show')->name('detail');
        Route::get('edit/{id}', 'ServiceController@edit')->name('edit');
        Route::put('update/{id}', 'ServiceController@update')->name('update');
        Route::any('status-update/{id}', 'ServiceController@statusUpdate')->name('status-update');
        Route::delete('delete/{id}', 'ServiceController@destroy')->name('delete');
        Route::any('download', 'ServiceController@download')->name('download');

        Route::get('request/list', [ServiceRequestController::class, 'requestList'])->name('request.list');
        Route::post('request/update/{id}', [ServiceRequestController::class, 'updateStatus'])->name('request.update');

        //ajax routes
        Route::any('ajax-add-variant', 'ServiceController@ajaxAddVariant')->name('ajax-add-variant')->withoutMiddleware('csrf');
        Route::any('ajax-remove-variant/{variant_key}', 'ServiceController@ajaxRemoveVariant')->name('ajax-remove-variant')->withoutMiddleware('csrf');
        Route::any('ajax-delete-db-variant/{variant_key}/{service_id}', 'ServiceController@ajaxDeleteDbVariant')->name('ajax-delete-db-variant')->withoutMiddleware('csrf');
    });

});


