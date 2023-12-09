<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserContoller;
use App\Http\Controllers\ClickController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::post('register', [UserController::class, 'register']);

Route::post('login', 'App\Http\Controllers\UserContoller@login');
// Route::group([

//     'middleware' => 'api',
//     'prefix' => 'auth'

// ], function ($router) {

//     Route::post('login', 'AuthController@login');
//     Route::post('logout', 'AuthController@logout');
//     Route::post('refresh', 'AuthController@refresh');
//     Route::post('me', 'AuthController@me');

// });


Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'App\Http\Controllers\AuthController@login');
    Route::post('logout', 'App\Http\Controllers\AuthController@logout');
    Route::post('refresh', 'App\Http\Controllers\AuthController@refresh');
    Route::post('me', 'App\Http\Controllers\AuthController@me');

});
Route::get('/categories', 'App\Http\Controllers\CategoryController@getAllCategories');
// Route::post('/save-clicks', 'App\Http\Controllers\ClickController@saveclicks');
Route::post('/save-clicks', [ClickController::class, 'saveclicks']);
Route::get('/clicks-for-categories-last-24-hours', [ClickController::class, 'clicksForCategoriesLast24Hours']);
Route::get('/clicks-for-categories-last-week', [ClickController::class, 'clicksForCategoriesLastWeek']);
Route::get('/clicks-for-categories-last-month', [ClickController::class, 'clicksForCategoriesLastMonth']);
Route::get('/clicks-for-categories-last-year', [ClickController::class, 'clicksForCategoriesLastYear']);
Route::get('/total-count', [ClickController::class, 'totalclickcount']);