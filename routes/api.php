<?php

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/usuarios','App\Http\Controllers\UsuarioApiController@index');//Mostrar los registros
Route::post('/usuarios','App\Http\Controllers\UsuarioApiController@store');//Crear articulo
Route::put('/usuarios/{id}','App\Http\Controllers\UsuarioApiController@update');//Actualizar articulo
Route::delete('/usuarios/{id}','App\Http\Controllers\UsuarioApiController@destroy');//Eliminar articulo


Route::get('/productos','App\Http\Controllers\ProductoApiController@index');//Mostrar los registros
Route::get('/productos/{id}','App\Http\Controllers\ProductoApiController@edit');//Mostrar los registros
Route::post('/productos','App\Http\Controllers\ProductoApiController@store');//Crear articulo
Route::put('/productos/{id}','App\Http\Controllers\ProductoApiController@update');//Actualizar articulo
Route::delete('/productos/{id}','App\Http\Controllers\ProductoApiController@destroy');//Eliminar articulo