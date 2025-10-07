<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NewsArticle extends Model
{
    protected $fillable = [
        'title',
        'excerpt',
        'content',
        'category',
        'image',
        'published_date',
        'is_published'
    ];

    protected $casts = [
        'published_date' => 'date',
        'is_published' => 'boolean'
    ];
}
