<?php

namespace App\Livewire;

use App\Models\Category;
use App\Models\Post;
use Livewire\Attributes\Title;
use Livewire\Attributes\Url;
use Livewire\Component;

class PostPage extends Component
{
    #[Title('Blog Page')]
    #[Url]
    public $categorySlug = null;

    public function render()
    {
        $categories = Category::all();
        if (!empty($this->categorySlug)) {
            $category = Category::where('slug', $this->categorySlug)->first();
            $posts = Post::with('user')->orderBy('created_at', 'DESC')
                ->where('category_id', $category->id)
                ->where('is_active', 1)
                ->get();
        } else {
            $posts = Post::with('user')->orderBy('created_at', 'DESC')
                ->where('is_active', 1)
                ->get();
        }
        return view('livewire.post-page', [
            'posts' => $posts,
            'categories' => $categories
        ]);
    }
}
