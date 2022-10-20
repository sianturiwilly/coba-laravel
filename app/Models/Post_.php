<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Tulisan Pertama",
            "slug" => "judul-tulisan-pertama",
            "author" => "Willi Sianturi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa quas natus nihil earum exercitationem impedit, nemo perspiciatis quod praesentium magnam aut nostrum magni itaque incidunt? Nam vero ad culpa similique."
        ],
        [
            "title" => "Judul Tulisan Kedua",
            "slug" => "judul-tulisan-kedua",
            "author" => "Willi Willy",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque, necessitatibus? Vero impedit unde esse voluptates nulla voluptatibus quis ducimus quasi iure, eveniet ab cupiditate numquam aperiam fuga veniam provident omnis obcaecati facere. Fugiat officia voluptatum, itaque sunt laudantium obcaecati reprehenderit at? Placeat tenetur amet cupiditate quod. Modi molestiae, minus voluptatibus ab earum fuga labore molestias ducimus magni corrupti laborum quam praesentium animi accusantium, mollitia commodi itaque! Voluptatem dolores eum consequatur illo dignissimos corrupti! Magnam, voluptates. Repudiandae vero, velit odit dolores, aspernatur sit laboriosam libero soluta eaque omnis minima. Fugiat ad quidem voluptate aliquid reiciendis at unde veritatis officiis vitae natus."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}