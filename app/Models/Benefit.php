<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Benefit extends Model
{
    protected $fillable = [
        'title_en',
        'description_en',
        'title_pl',
        'description_pl',
        'icon',
        'order',
        'active',
    ];
}
