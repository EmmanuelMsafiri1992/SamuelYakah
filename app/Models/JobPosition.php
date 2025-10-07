<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JobPosition extends Model
{
    use HasFactory;

    protected $fillable = [
        'title_en',
        'title_pl',
        'description_en',
        'description_pl',
        'location_en',
        'location_pl',
        'type',
        'salary_min',
        'salary_max',
        'requirements_en',
        'requirements_pl',
        'responsibilities_en',
        'responsibilities_pl',
        'order',
        'active',
    ];

    protected $casts = [
        'active' => 'boolean',
        'salary_min' => 'decimal:2',
        'salary_max' => 'decimal:2',
    ];
}
