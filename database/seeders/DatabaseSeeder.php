<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // chạy lệnh php artisan db:seed
        // \App\Models\User::factory(50)->create();
        // \App\Models\Comments::factory(100)->create();
        \App\Models\Product::factory(100)->create();
        
    }
}
