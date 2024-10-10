<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PassResetController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

//frontend
Route::get('/', [FrontendController::class, 'welcome'])->name('index');
Route::get('/author/login/page', [FrontendController::class, 'author_login_page'])->name('author.login.page');
Route::get('/author/register/page', [FrontendController::class, 'author_register_page'])->name('author.register.page');
Route::get('/author/list', [FrontendController::class, 'author_list'])->name('author.list');




Route::get('/dashboard', [HomeController::class, 'dashboard'])->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';


//profile
Route::get('/users', [UserController::class, 'users'])->middleware('auth')->name('users');
Route::get('/edit/profile', [UserController::class, 'edit_profile'])->middleware('auth')->name('edit.profile');
Route::post('/update/profile', [UserController::class, 'update_profile'])->name('update.profile');
Route::post('/update/password', [UserController::class, 'update_password'])->name('update.password');
Route::post('/update/photo', [UserController::class, 'update_photo'])->name('update.photo');
Route::get('/delete/user/{user_id}', [UserController::class, 'delete_user'])->name('delete.user');
Route::post('/add/user', [UserController::class, 'add_user'])->middleware('auth')->name('add.user');


//Category
Route::get('/category', [CategoryController::class, 'category'])->middleware('auth')->name('category');
Route::post('/category/store', [CategoryController::class, 'category_store'])->name('category.store');
Route::get('/category/delete/{category_id}', [CategoryController::class, 'category_delete'])->name('category.delete');
Route::get('/category/trash', [CategoryController::class, 'category_trash'])->middleware('auth')->name('category.trash');
Route::get('/category/restore/{category_id}', [CategoryController::class, 'category_restore'])->name('category.restore');
Route::get('/category/hard/delete/{category_id}', [CategoryController::class, 'category_hard_del'])->name('category.hard.delete');
Route::get('/category/edit/{category_id}', [CategoryController::class, 'category_edit'])->middleware('auth')->name('category.edit');
Route::post('/category/update/{category_id}', [CategoryController::class, 'category_update'])->name('category.update');
Route::post('/category/check/delete', [CategoryController::class, 'category_check_delete'])->name('category.check.delete');
Route::post('/category/check/restore', [CategoryController::class, 'category_check_restore'])->name('category.check.restore');

//Tags
Route::get('/tag', [TagController::class, 'tag'])->middleware('auth')->name('tag');
Route::post('/tag/store', [TagController::class, 'tag_store'])->name('tag.store');
Route::get('/tag/delete/{tag_id}', [TagController::class, 'tag_del'])->name('tag.del');

//Authors
Route::post('/author/register/post', [AuthorController::class, 'author_register'])->name('author.register');
Route::post('/author/login/post', [AuthorController::class, 'author_login'])->name('author.login');
Route::get('/author/logout', [AuthorController::class, 'author_logout'])->name('author.logout');
Route::get('/author/dashboard', [AuthorController::class, 'author_dashboard'])->middleware('author')->name('author.dashboard');
Route::get('/authors', [AuthorController::class, 'authors'])->middleware('auth')->name('authors');
Route::get('/author/status/{author_id}', [AuthorController::class, 'author_status'])->middleware('auth')->name('author.status');
Route::get('/author/edit', [AuthorController::class, 'author_edit'])->middleware('author')->name('author.edit');
Route::post('/author/update', [AuthorController::class, 'author_update'])->middleware('author')->name('author.update');
Route::post('/author/password/update', [AuthorController::class, 'author_password_update'])->middleware('author')->name('author.password.update');
Route::get('/author/mail/verify/{token}', [AuthorController::class, 'author_mail_verify'])->name('author.mail.verify');

//POST
Route::get('/add/post', [PostController::class, 'add_post'])->name('add.post');
Route::post('/post/store', [PostController::class, 'post_store'])->name('post.store');
Route::get('/my/post', [PostController::class, 'my_post'])->name('my.post');
Route::get('/my/post/del/{post_id}', [PostController::class, 'my_post_del'])->name('my.post.del');
Route::get('/all/post', [UserController::class, 'all_post'])->name('all.post');
Route::get('/post/active/deactive/{post_id}', [UserController::class, 'post_status'])->name('post.status');
Route::get('/post/details/{slug}', [FrontendController::class, 'post_details'])->name('post.details');
Route::get('/author/post/{author_id}', [FrontendController::class, 'author_post'])->name('author.post');
Route::get('/category/post/{category_id}', [FrontendController::class, 'category_post'])->name('category.post');
Route::get('/tag/post/{tag_id}', [FrontendController::class, 'tag_post'])->name('tag.post');

//search
Route::get('/search', [FrontendController::class, 'search'])->name('search');

//comments 
Route::post('/comments/store/{author_id}', [FrontendController::class, 'comments_store'])->name('comments.store');


//role manager

Route::get('/role/manager', [RoleController::class, 'role_manager'])->name('role.manager');
Route::post('/permission/store', [RoleController::class, 'permission_store'])->name('permission.store');
Route::post('/role/store', [RoleController::class, 'role_store'])->name('role.store');
Route::post('/role/assign', [RoleController::class, 'role_assign'])->name('role.assign');
Route::get('/delete/role/{role_id}', [RoleController::class, 'role_delete'])->name('role.delete');
Route::get('/remove/role/{user_id}', [RoleController::class, 'role_remove'])->name('role.remove');

//Password Reset
Route::get('/pass/reset/req', [PassResetController::class, 'pass_reset_req'])->name('pass.reset.req');
Route::post('/pass/reset/req/send', [PassResetController::class, 'pass_reset_req_send'])->name('pass.reset.req.send');
Route::get('/pass/reset/form/{token}', [PassResetController::class, 'pass_reset_form'])->name('pass.reset.form');
Route::post('/reset/pass/{token}', [PassResetController::class, 'reset_pass'])->name('reset.pass');

//Faq
Route::resource('faq', FaqController::class);