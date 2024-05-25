<?php

use App\Http\Controllers\detailtransaksiController;
use App\Http\Controllers\pemasokController;
use App\Http\Controllers\produkController;
use App\Http\Controllers\transaksipembelianController;
use App\Http\Controllers\userController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::resource('produk', produkController::class);
Route::resource('pemasok', pemasokController::class);
Route::resource('transaksipembelian', transaksipembelianController::class);
Route::resource('detailtransaksi', detailtransaksiController::class);
Route::resource('user', userController::class);
Route::get('/transaksiPdf', [detailtransaksiController::class,'transaksidownloadPdf']);
Route::get('/ProdukPdf', [produkController::class,'produkdownloadPdf']);
Route::get('/PemasokPdf', [pemasokController::class,'pemasokdownloadPdf']);