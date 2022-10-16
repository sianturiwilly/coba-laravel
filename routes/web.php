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

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Willi Sianturi",
        "email" => "willymusermufc@hotmail.com",
        "image" => "willi.jpg"
    ]);
});

Route::get('/blog', function () {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Willi Sianturi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa quas natus nihil earum exercitationem impedit, nemo perspiciatis quod praesentium magnam aut nostrum magni itaque incidunt? Nam vero ad culpa similique."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Willi Willy",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque, necessitatibus? Vero impedit unde esse voluptates nulla voluptatibus quis ducimus quasi iure, eveniet ab cupiditate numquam aperiam fuga veniam provident omnis obcaecati facere. Fugiat officia voluptatum, itaque sunt laudantium obcaecati reprehenderit at? Placeat tenetur amet cupiditate quod. Modi molestiae, minus voluptatibus ab earum fuga labore molestias ducimus magni corrupti laborum quam praesentium animi accusantium, mollitia commodi itaque! Voluptatem dolores eum consequatur illo dignissimos corrupti! Magnam, voluptates. Repudiandae vero, velit odit dolores, aspernatur sit laboriosam libero soluta eaque omnis minima. Fugiat ad quidem voluptate aliquid reiciendis at unde veritatis officiis vitae natus."
        ]
    ];

    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});

// Halaman Single Post
Route::get('posts/{slug}', function($slug) {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Willi Sianturi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa quas natus nihil earum exercitationem impedit, nemo perspiciatis quod praesentium magnam aut nostrum magni itaque incidunt? Nam vero ad culpa similique."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Willi Willy",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque, necessitatibus? Vero impedit unde esse voluptates nulla voluptatibus quis ducimus quasi iure, eveniet ab cupiditate numquam aperiam fuga veniam provident omnis obcaecati facere. Fugiat officia voluptatum, itaque sunt laudantium obcaecati reprehenderit at? Placeat tenetur amet cupiditate quod. Modi molestiae, minus voluptatibus ab earum fuga labore molestias ducimus magni corrupti laborum quam praesentium animi accusantium, mollitia commodi itaque! Voluptatem dolores eum consequatur illo dignissimos corrupti! Magnam, voluptates. Repudiandae vero, velit odit dolores, aspernatur sit laboriosam libero soluta eaque omnis minima. Fugiat ad quidem voluptate aliquid reiciendis at unde veritatis officiis vitae natus."
        ]
    ];

    $new_post = [];
    foreach($blog_posts as $post) {
        if($post["slug"] === $slug) {
            $new_post = $post;
        }
    }
    
    return view('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});