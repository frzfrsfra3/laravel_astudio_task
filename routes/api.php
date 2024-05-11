<?php

use App\Http\Controllers\ProjectController;
use App\Http\Controllers\TimesheetController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->group(function () {
    Route::prefix('/user')->group(function () {
        Route::get('/', [UserController::class, 'index']);

        Route::get('/{id}', [UserController::class, 'show']);
        Route::post('/{id}/update', [UserController::class, 'update']);
        Route::post('/{id}/delete', [UserController::class, 'destroy']);
    });

    Route::prefix('/project')->group(function () {
        Route::get('/', [ProjectController::class, 'index']);
        Route::post('/create', [ProjectController::class, 'store']);
        Route::get('/{id}', [ProjectController::class, 'show']);
        Route::post('/{id}/update', [ProjectController::class, 'update']);
        Route::post('/{id}/delete', [ProjectController::class, 'destroy']);
    });

    Route::prefix('/timesheet')->group(function () {
        Route::get('/', [TimesheetController::class, 'index']);
        Route::post('/create', [TimesheetController::class, 'store']);
        Route::get('/{id}', [TimesheetController::class, 'show']);
        Route::post('/{id}/update', [TimesheetController::class, 'update']);
        Route::post('/{id}/delete', [TimesheetController::class, 'destroy']);
    });

});


require __DIR__ . '/auth.php';

