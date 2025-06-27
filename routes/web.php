<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/',[HomeController::class, 'index'])->name('home');
Route::get('/contact-us',[HomeController::class, 'contact'])->name('contact.submit');
Route::post('/contact-us',[HomeController::class, 'contactPost']);
Route::get('/destinations/{slug?}', [HomeController::class, 'destination'])->name('Destination');
Route::get('/destination/{slug?}', [HomeController::class, 'destinationDetails'])->name('DestinationDetails');
Route::get('/packages/{slug?}', [HomeController::class, 'package'])->name('Packages');
Route::get('/package/{slug?}', [HomeController::class, 'packageDetails'])->name('PackageDetails');