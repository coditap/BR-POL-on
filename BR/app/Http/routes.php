<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/naukowcy', 'MainController@pokazNaukowcow')->name('naukowcy');
Route::get('/badania', 'MainController@pokazBadania')->name('badania');
Route::get('/naukowcy/usun/{id}', 'MainController@usunNaukowca')->name('usunNaukowca');
Route::post('/naukowcy/awansuj/{id}', 'MainController@awansujNaukowca')->name('awansujNaukowca');
Route::get('/badania/zakoncz/{id}', 'MainController@zakonczBadanie')->name('zakonczBadanie');

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
    //
});
