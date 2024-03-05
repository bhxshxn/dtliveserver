<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Rating;

class Rating_Table extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Rating::insert([
            'user_id' => 1,
            'rating' => 4.5,
            'video_id' => 1,
            'type_id' => 1,
            'video_type' => 1,
        ]);
    }
}
