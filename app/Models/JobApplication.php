<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobApplication extends Model
{
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'phone',
        'address',
        'nationality',
        'date_of_birth',
        'experience',
        'qualifications',
        'has_right_to_work',
        'has_driving_license',
        'cv_path',
        'status',
        'notes',
    ];

    protected $casts = [
        'date_of_birth' => 'date',
        'has_right_to_work' => 'boolean',
        'has_driving_license' => 'boolean',
    ];
}
