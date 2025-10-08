<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    protected $fillable = [
        'question_en',
        'answer_en',
        'question_pl',
        'answer_pl',
        'question_nl',
        'answer_nl',
        'order',
        'active',
    ];
}
