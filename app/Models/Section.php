<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Section extends Model
{
    protected $fillable = [
        'key',
        'type',
        'order',
        'active',
    ];

    /**
     * Get the translations for the section.
     */
    public function translations(): HasMany
    {
        return $this->hasMany(SectionTranslation::class);
    }

    /**
     * Get translation by locale.
     */
    public function getTranslation(string $locale): ?SectionTranslation
    {
        return $this->translations()->where('locale', $locale)->first();
    }
}
