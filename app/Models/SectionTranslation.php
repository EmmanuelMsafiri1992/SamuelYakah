<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SectionTranslation extends Model
{
    protected $fillable = [
        'section_id',
        'locale',
        'title',
        'content',
        'subtitle',
        'meta',
    ];

    protected $casts = [
        'meta' => 'array',
    ];

    /**
     * Get the section that owns the translation.
     */
    public function section(): BelongsTo
    {
        return $this->belongsTo(Section::class);
    }
}
