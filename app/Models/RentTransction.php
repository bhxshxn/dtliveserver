<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RentTransction extends Model
{
    use HasFactory;

    protected $table = 'rent_transction';
    protected $guarded = array();

    public $timestamps = false;

    public function user()
    {
        return $this->belongsTo(Users::class, 'user_id');
    }

    public static function getVideoName($video_id, $type)
    {
        if ($type == 1) {
            return Video::where('id', $video_id)->pluck('name')->first();
        } else {
            return TVShow::where('id', $video_id)->pluck('name')->first();
        }
    }

}
