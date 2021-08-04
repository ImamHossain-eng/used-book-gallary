<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\BackController;
use App\Http\Controllers\UserController;

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

/*Route::get('/', function () {
    return view('welcome');
});*/
Route::get('/', [PagesController::class, 'index'])->name('homepage');
Route::post('/', [PagesController::class, 'feedback'])->name('feedback');

Auth::routes(['register' => false]);
Route::get('/user/register', [PagesController::class, 'user_register'])->name('registration');
Route::post('/user', [PagesController::class, 'user_post'])->name('register');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/admin/home', [App\Http\Controllers\HomeController::class, 'handleAdmin'])->middleware('admin')->name('admin.route');

Route::group(['prefix' => 'admin', 'middleware' => 'admin'], function(){
    Route::get('/', [App\Http\Controllers\HomeController::class, 'handleAdmin']);
    //Manage Admins
    Route::get('/user/admins', [BackController::class, 'admin_index'])->name('admin.admin_index');
    Route::get('/user/admin/create', [BackController::class, 'admin_create'])->name('admin.admin_create');
    Route::post('/user/admins', [BackController::class, 'admin_store'])->name('admin.admin_store');
    Route::get('/user/admins/{id}/edit', [BackController::class, 'admin_edit'])->name('admin.admin_edit');
    Route::put('/user/admins/{id}', [BackController::class, 'admin_update'])->name('admin.admin_update');
    Route::delete('/user/admins/{id}', [BackController::class, 'admin_destroy'])->name('admin.admin_destroy');
    //manage users
    Route::get('/users', [BackController::class, 'user_index'])->name('admin.user_index');
    Route::get('/users/{id}/edit', [BackController::class, 'user_edit'])->name('admin.user_edit');
    Route::put('/users/{id}', [BackController::class, 'user_update'])->name('admin.user_update');
    Route::delete('/users/{id}', [BackController::class, 'user_destroy'])->name('admin.user_destroy');
    //see books request
    //University CRUD
    Route::get('/varsity', [BackController::class, 'varsity_index'])->name('admin.varsity_index');
    Route::get('/varsity/create', [BackController::class, 'varsity_create'])->name('admin.varsity_create');
    Route::post('/varsity', [BackCOntroller::class, 'varsity_store'])->name('admin.varsity_store');
    Route::get('/varsity/{id}/edit', [BackController::class, 'varsity_edit'])->name('admin.varsity_edit');
    Route::put('/varsity/{id}', [BackController::class, 'varsity_update'])->name('admin.varsity_update');
    Route::delete('/varsity/{id}', [BackController::class, 'varsity_destroy'])->name('admin.varsity_destroy');
    //Feedback
    Route::get('/feedback', [BackController::class, 'feedback_index'])->name('admin.feedback');
    Route::delete('/feedback/{id}', [BackController::class, 'feedback_destroy'])->name('admin.feedback_destroy');
    Route::get('/feedback/{id}', [BackController::class, 'feedback_show'])->name('admin.feedback_show');
    //Book Category
    Route::get('/book/type', [BackController::class, 'book_type'])->name('admin.book_type');
    Route::get('/book/type/create', [BackController::class, 'type_create'])->name('admin.type_create');
    Route::post('/book/type', [BackController::class, 'type_store'])->name('admin.type_store');
    Route::delete('/book/type/{id}', [BackController::class, 'type_destroy'])->name('admin.type_destroy');
    //Book CRUD
    Route::get('/book', [BackController::class, 'book_index'])->name('admin.book_index');
    Route::get('/book/create', [BackController::class, 'book_create'])->name('admin.book_create');
    Route::post('/book', [BackController::class, 'book_store'])->name('admin.book_store');
    Route::delete('/book/{id}', [BackController::class, 'book_destroy'])->name('admin.book_destroy');
    Route::get('/book/{id}/edit', [BackController::class, 'book_edit'])->name('admin.book_edit');
    Route::put('/book/{id}', [BackController::class, 'book_update'])->name('admin.book_update');
    Route::get('/book/{id}', [BackController::class, 'book_show'])->name('admin.book_show');
    
    
});

//User Route
Route::prefix('user')->group(function(){
    //Available books
    Route::get('/books', [UserController::class, 'books_index'])->name('user.books_index');
    //Book Published
    Route::get('/book', [UserController::class, 'book_index'])->name('user.book_index');
    Route::get('/book/create', [UserController::class, 'book_create'])->name('user.book_create');
    Route::post('/book', [UserController::class, 'book_store'])->name('user.book_store');
    Route::get('/book/{id}', [UserController::class, 'book_show'])->name('user.book_show');
    Route::get('/book/{id}/edit', [UserController::class, 'book_edit'])->name('user.book_edit');
    Route::put('/book/{id}', [UserController::class, 'book_update'])->name('user.book_update');
    Route::delete('/book/{id}', [UserController::class, 'book_destroy'])->name('user.book_destroy');
    //Transaction List
    Route::get('/account', [UserController::class, 'user_acount'])->name('user.account');
    //Add Book to user card // order a book
    Route::post('/books/{id}', [UserController::class, 'book_card'])->name('user.book_card');
    Route::get('/orders/books', [UserController::class, 'book_order'])->name('user.book_order');
    
});



//Visitor Route
Route::get('/book/{id}', [PagesController::class, 'book_show']);
Route::get('/books', [PagesController::class, 'book_index'])->name('visitor.book_index');
//search the book
Route::post('/book', [PagesController::class, 'book_find'])->name('book.filter');
//search
Route::post('/books', [PagesController::class, 'book_search'])->name('book.search');
//contact
Route::get('/contact', [PagesController::class, 'contact'])->name('contact');