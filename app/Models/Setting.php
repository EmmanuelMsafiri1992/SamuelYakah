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
}
