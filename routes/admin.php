<?php
use App\Http\Controllers\Admin\AdminController;
use Illuminate\Support\Facades\Route;

Route::controller(AdminController::class)
    ->as('admin.')
    ->group(function () {
        Route::get('', 'index')->name('index');
        Route::get('sync', 'sync')->name('sync');
        Route::post('add-user', 'addUser')->name('addUser');
    });
