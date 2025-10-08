<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NewsArticle extends Model
{
    protected $fillable = [
        'title_en',
        'title_pl',
        'title_nl',
        'excerpt_en',
        'excerpt_pl',
        'excerpt_nl',
        'category_en',
        'category_pl',
        'category_nl',
        'date',
        'slug',
        'is_published'
    ];

    protected $casts = [
        'is_published' => 'boolean'
    ];
}
