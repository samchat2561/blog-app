<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Category extends Model
{
    protected $fillable = [
        'title',
        'slug',
        'image',
        'content',
        'is_active'
    ];

    protected $casts = [
        'is_active' => 'boolean'
    ];

    public function posts(): HasMany
    {
        return $this->hasMany(Post::class, 'category_id');
    }

    public function getPostsCountAttribute()
    {
        return $this->posts()->count();
    }
}
