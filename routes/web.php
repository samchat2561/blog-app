<?php

use App\Livewire\HomePage;
use App\Livewire\PostPage;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', HomePage::class)->name('home.index');
Route::get('/posts', PostPage::class)->name('posts.index');
