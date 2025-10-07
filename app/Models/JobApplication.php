<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobApplication extends Model
{
    protected $fillable = [
        'care_job_id',
        'job_title',
        'full_name',
        'email',
        'phone',
        'experience',
        'cover_letter',
        'cv_file',
        'status'
    ];

    protected $casts = [
        'care_job_id' => 'integer'
    ];

    public function careJob()
    {
        return $this->belongsTo(CareJob::class, 'care_job_id');
    }
}
