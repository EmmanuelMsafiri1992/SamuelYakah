<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrainingModule extends Model
{
    protected $fillable = [
        'title_en',
        'description_en',
        'title_pl',
        'description_pl',
        'order',
        'active',
    ];
}
