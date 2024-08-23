<?php

use Illuminate\Support\Facades\Route;
use Modules\ProductModule\Http\Controllers\Web\Admin\ProductController;

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => ['admin', 'mpc:product_module']], function () {
    Route::group(['prefix' => 'product', 'as' => 'product.'], function () {
        Route::any('list', [ProductController::class, 'index'])->name('index');
        Route::any('create', [ProductController::class, 'create'])->name('create');
        Route::post('store', [ProductController::class, 'store'])->name('store');
        Route::get('edit/{id}', [ProductController::class, 'edit'])->name('edit');
        Route::put('update/{id}', [ProductController::class, 'update'])->name('update');
        Route::any('status-update/{id}', [ProductController::class, 'statusUpdate'])->name('status-update');
        Route::delete('delete/{id}', [ProductController::class, 'destroy'])->name('delete');
        Route::any('download', [ProductController::class, 'download'])->name('download');
    });
});

Route::group(['prefix' => 'provider', 'as' => 'provider.', 'namespace' => 'Web\Provider', 'middleware' => ['provider']], function () {

    Route::group(['prefix' => 'product', 'as' => 'product.'], function () {
        Route::any('list', [ProductController::class, 'index'])->name('index');
        Route::any('create', [ProductController::class, 'create'])->name('create');
        Route::post('store', [ProductController::class, 'store'])->name('store');
        Route::get('edit/{id}', [ProductController::class, 'edit'])->name('edit');
        Route::put('update/{id}', [ProductController::class, 'update'])->name('update');
        Route::any('status-update/{id}', [ProductController::class, 'statusUpdate'])->name('status-update');
        Route::delete('delete/{id}', [ProductController::class, 'destroy'])->name('delete');
        Route::any('download', [ProductController::class, 'download'])->name('download');
    });
});

