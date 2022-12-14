<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Willi Sianturi',
            'username' => 'willisianturi',
            'email' => 'prajudiwilliam10@gmail.com',
            'password' => bcrypt('password')
        ]);

        // User::create([
        //     'name' => 'Darwis Purba',
        //     'email' => 'darwispurba93@gmail.com',
        //     'password' => bcrypt('54321')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero veniam, earum repellendus hic ab quasi vel soluta autem natus exercitationem eveniet itaque excepturi dolore, facilis nesciunt ipsa sit est! Magni similique provident id, beatae asperiores sed eius, consectetur vitae non vero libero tenetur dicta cum ut sapiente, deleniti sit culpa doloribus accusantium enim dolores fugiat quidem! Exercitationem officiis voluptas quae labore sint accusamus reiciendis accusantium esse, vitae sequi voluptatem aut voluptatibus magnam necessitatibus perspiciatis ducimus error aspernatur cupiditate perferendis ipsa fugiat odio eligendi quas eius. Velit, omnis aliquam ducimus veniam, quo ipsam illum, inventore ut consequatur qui iure! Deserunt, dignissimos?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero veniam, earum repellendus hic ab quasi vel soluta autem natus exercitationem eveniet itaque excepturi dolore, facilis nesciunt ipsa sit est! Magni similique provident id, beatae asperiores sed eius, consectetur vitae non vero libero tenetur dicta cum ut sapiente, deleniti sit culpa doloribus accusantium enim dolores fugiat quidem! Exercitationem officiis voluptas quae labore sint accusamus reiciendis accusantium esse, vitae sequi voluptatem aut voluptatibus magnam necessitatibus perspiciatis ducimus error aspernatur cupiditate perferendis ipsa fugiat odio eligendi quas eius. Velit, omnis aliquam ducimus veniam, quo ipsam illum, inventore ut consequatur qui iure! Deserunt, dignissimos?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero veniam, earum repellendus hic ab quasi vel soluta autem natus exercitationem eveniet itaque excepturi dolore, facilis nesciunt ipsa sit est! Magni similique provident id, beatae asperiores sed eius, consectetur vitae non vero libero tenetur dicta cum ut sapiente, deleniti sit culpa doloribus accusantium enim dolores fugiat quidem! Exercitationem officiis voluptas quae labore sint accusamus reiciendis accusantium esse, vitae sequi voluptatem aut voluptatibus magnam necessitatibus perspiciatis ducimus error aspernatur cupiditate perferendis ipsa fugiat odio eligendi quas eius. Velit, omnis aliquam ducimus veniam, quo ipsam illum, inventore ut consequatur qui iure! Deserunt, dignissimos?',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero veniam, earum repellendus hic ab quasi vel soluta autem natus exercitationem eveniet itaque excepturi dolore, facilis nesciunt ipsa sit est! Magni similique provident id, beatae asperiores sed eius, consectetur vitae non vero libero tenetur dicta cum ut sapiente, deleniti sit culpa doloribus accusantium enim dolores fugiat quidem! Exercitationem officiis voluptas quae labore sint accusamus reiciendis accusantium esse, vitae sequi voluptatem aut voluptatibus magnam necessitatibus perspiciatis ducimus error aspernatur cupiditate perferendis ipsa fugiat odio eligendi quas eius. Velit, omnis aliquam ducimus veniam, quo ipsam illum, inventore ut consequatur qui iure! Deserunt, dignissimos?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}