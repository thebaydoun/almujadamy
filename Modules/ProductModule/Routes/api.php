<?php

use Illuminate\Http\Request;
use Modules\ProductModule\Http\Controllers\Api\ProductApiController;

Route::group(['prefix' => 'v1', 'as' => 'api.'], function () {
    Route::get('products', [ProductApiController::class, 'index'])->name('products.index');
    Route::get('products/{id}', [ProductApiController::class, 'show'])->name('products.show');
});
