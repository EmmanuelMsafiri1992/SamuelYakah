<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    protected $fillable = [
        'key',
        'value_en',
        'value_pl',
        'type',
        'group',
    ];

    /**
     * Get a setting value by key
     *
     * @param string $key
     * @param mixed $default
     * @return mixed
     */
    public static function get($key, $default = null)
    {
        $locale = app()->getLocale();
        $valueColumn = 'value_' . $locale;

        $setting = static::where('key', $key)->first();

        if (!$setting) {
            return $default;
        }

        return $setting->$valueColumn ?? $setting->value_en ?? $default;
    }
}
