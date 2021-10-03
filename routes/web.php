<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::feeds();

Route::get('/',"HomesController@index");

Route::get('/tags/{tags}',"HomesController@tags")->where(["tags" => "[a-zA-Z0-9-]+"]);

Route::prefix('artikel')->group(function () {
    Route::get('/kategori/{slug}', "HomesController@kategori")->where(["slug" => "[a-zA-Z0-9-]+"]);

    Route::get('/{year}/{month}/{slug}',"HomesController@post")->where(["year" => "[0-9]+","month" => "[0-9]+","slug" => "[a-zA-Z0-9-]+"]);
});

/** Profile */
Route::get('/profil',"HomesController@profil");

Route::get('/privacy-policy',"HomesController@privacy");

/** Contact */
Route::post('/contact/do',"HomesController@contact");


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/getpost', 'HomeController@getPost')->name('getpost');
Route::get('/post/{id}', 'HomeController@post')->name('post');
Route::get('/post', 'HomeController@posts')->name('post');
Route::post('/post/do','HomeController@action')->name('post-action');
