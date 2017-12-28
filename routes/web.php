<?php

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('logout',function(){
	Auth::logout();
	return redirect('/');
})->name('logout');


Route::resource('properties','PropertyController');




Route::get('/test',function(){
	return App\User::create([
            'user_full_name' => 'sumit',
            'email' => 'sumit@sss.sds',
            'password' => bcrypt('123456'),
            'role_id'   => 1,
        ]);
});



Route::get('/properties','UserController@index');



Route::group(['middleware'=>['auth','AdminAuth'],'prefix'=>'admin'],function(){
	Route::get('/','AdminController@index')->name('admin.dashboard');
    Route::get('/properties','AdminController@properties')->name('admin.properties');
    Route::get('/property','AdminController@createproperty')->name('admin.property');
    Route::post('/property','AdminController@storeproperties')->name('admin.storeproperties');
    
});



