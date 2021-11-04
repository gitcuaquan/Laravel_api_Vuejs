<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BillController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Whoops\Run;

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
    Route::get('/getme', [AuthController::class, 'getMe']);
    Route::get("/user", [UserController::class, 'index']);
    Route::get("/comment", [CommentController::class, 'index']);
    Route::post('/staff/add', [StaffController::class, 'add']);
    Route::get('getstaff', [StaffController::class, 'index']);
    Route::delete('deletestaff/{id}', [StaffController::class, 'delete']);
    Route::get('getstaff/{id}', [StaffController::class, 'getstaff']);
    Route::post('updatestaff/{id}', [StaffController::class, 'update']);


    Route::get('productsactive/{status}', [ProductController::class, 'active']);
    Route::delete('deletebanner/{id}', [UploadController::class, 'deleteBanner']);
    Route::delete("deletetopic/{id}", [PostController::class, "deleteTopic"]);
    Route::post('addpost', [PostController::class, 'add']);

    Route::get('setpost/{status}/{id}', [PostController::class, 'setPost']);

    Route::post('updatepost/{id}', [PostController::class, 'updatePost']);

    Route::post('addtopic', [PostController::class, 'addtopic']);
    Route::post('addbill',[BillController::class,'addBill']);

    Route::delete('deletepost/{id}', [PostController::class, 'deletePost']);
});
Route::post('/auth/register', [AuthController::class, 'register']);

Route::post('/auth/login',  [AuthController::class, 'login']);
Route::post('upload', [UploadController::class, 'upload']);
Route::post('uploadlogo', [UploadController::class, 'uploadLogo']);
Route::get('getlogo', [UploadController::class, 'getLogo']);

Route::post('uploadbanner', [UploadController::class, 'uploadBanner']);
Route::post('uploadthumb', [UploadController::class, 'uploadThumb']);
Route::get('getbanner', [UploadController::class, 'getbanner']);
Route::get('gettopic', [PostController::class, 'getTopic']);
Route::get('getpost/{status}', [PostController::class, 'getpost']);

Route::get('products', [ProductController::class, 'index']);
Route::get('products/{status}/{id}', [ProductController::class, 'action']);
Route::get('products/{status}', [ProductController::class, 'filter']);
