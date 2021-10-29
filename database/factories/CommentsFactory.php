<?php

namespace Database\Factories;

use App\Models\Comments;
use Faker\Core\Number;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommentsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Comments::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'product_id' => rand(1,20),
            'title'=>$this->faker->text(50),
            'comment'=>$this->faker->text(200),
            'address'=>$this->faker->address(),
            'phone'=>$this->faker->phoneNumber(),
            'level'=>rand(1,5),
        ];
    }
}
