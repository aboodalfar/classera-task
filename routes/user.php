<?php
use App\Http\Controllers\User\UserController;
use Illuminate\Support\Facades\Route;

Route::controller(UserController::class)
    ->as('user.')
    ->group(function () {
        Route::get('', 'index')->name('index');
        Route::get('sso', 'sso')->name('sso');
    });
