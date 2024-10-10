<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class comment extends Model
{
    use HasFactory;

    function rel_to_author(){
        return $this->belongsTo(Author::class, 'author_id');
    }
    function replies()
    {
        return $this->hasMany(comment::class, 'parent_id', 'id');
    }
}
