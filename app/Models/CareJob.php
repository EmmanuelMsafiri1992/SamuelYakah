<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CareJob extends Model
{
    protected $fillable = [
        'title',
        'location',
        'type',
        'salary',
        'description',
        'requirements',
        'is_active'
    ];

    protected $casts = [
        'requirements' => 'array',
        'is_active' => 'boolean'
    ];

    public function applications()
    {
        return $this->hasMany(JobApplication::class, 'care_job_id');
    }
}
