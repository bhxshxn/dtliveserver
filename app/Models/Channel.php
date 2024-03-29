<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Channel extends Model
{
    use HasFactory;

    protected $table = 'channel';
    protected $guarded = array();

    protected $casts = [
        'id' => 'integer',
        'status' => 'integer',
    ];

}
