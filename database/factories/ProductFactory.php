<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->unique()->text(20),
            'code'=>rand(1111111,9999999),
            'category'=>rand(1,5),
            'price'=>rand(200000000,600000000),
            'quantity'=>rand(1,100),
            'status'=>rand(0,1),
            'description'=>$this->faker->text(),
            'thumbnail'=>$this->faker->imageUrl()

        ];
    }
}
