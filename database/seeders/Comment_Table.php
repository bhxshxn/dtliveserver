<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Comment;

class Comment_Table extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Comment::insert([
            'user_id' => 1,
            'video_id' => 1,
            'type_id' => 1,
            'video_type' => 1,
            'comment_text' => "This is The Best Video",
            'status' => 0
        ]);
    }
}
