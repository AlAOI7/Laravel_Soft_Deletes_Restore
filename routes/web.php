<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/',[UserController::class,'index']);
Route::get('/softDelete/{id}',[UserController::class,'softDelete']);
Route::get('forceDelete/{id}',[UserController::class,'forceDelete']);

Route::get('trashed',[UserController::class,'trashed']);
Route::get('restore/{id}',[UserController::class,'restore']);
Route::get('restore-all',[UserController::class,'restoreAll']);
