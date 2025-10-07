<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SeoSetting extends Model
{
    protected $fillable = [
        'page',
        'meta_title_en',
        'meta_title_pl',
        'meta_description_en',
        'meta_description_pl',
        'meta_keywords_en',
        'meta_keywords_pl',
        'og_title_en',
        'og_title_pl',
        'og_description_en',
        'og_description_pl',
        'og_image',
        'schema_markup',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
    ];
}
