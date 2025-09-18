<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Post extends Model
{
    protected $fillable = [
        'title',
        'slug',
        'image',
        'detail_image',
        'preview_text',
        'detail_text',
        'tags',
        'user_id',
        'category_id',
        'published_at',
        'is_active'
    ];

    protected $casts = [
        'tags' => 'array',
        'published_at' => 'datetime',
        'active' => 'boolean'
    ];

    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class,'category_id','id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function getFormattedPublishedAtAttribute()
    {
        return Carbon::parse($this->published_at)->translatedFormat('j F Y');
    }
}
