<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\GameController;
use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


// Routes for registration and login
Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

// Routes protected by Sanctum authentication middleware
Route::middleware('auth:sanctum')->group(function () {
    // Route to get user information
    Route::get('user', [AuthController::class, 'user']);
    Route::get('game', [GameController::class, 'getDataFromApi']);
    Route::post('logout', [AuthController::class,'logout']);
});
