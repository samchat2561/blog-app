<?php

namespace App\Filament\Resources\Posts\Schemas;

use App\Models\Category;
use App\Models\User;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TagsInput;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class PostForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required()
                    ->minLength(1)
                    ->maxLength(150)
                    ->placeholder('Enter Title')
                    ->live(onBlur: true)
                    ->afterStateUpdated(fn(Set $set, ?string $state) => $set('slug', Str::slug($state))),
                TextInput::make('slug')
                    ->required()
                    ->unique(ignoreRecord: true)
                    ->minLength(1)
                    ->maxLength(150),
                FileUpload::make('image')
                    ->label('Announcement image')
                    ->disk('public')
                    ->directory('posts/images'),
                FileUpload::make('detail_image')
                    ->label('Detailed image')
                    ->disk('public')
                    ->directory('posts/images'),
                Textarea::make('preview_text')
                    ->label('Announcement')
                    ->columnSpanFull(),
                RichEditor::make('detail_text')
                    ->label('Category')
                    ->columnSpan(1)
                    ->required()->minLength(1)
                    ->placeholder('Enter detail')
                    ->columnSpanFull(),
                TagsInput::make('tags')
                    ->label('Tags'),
                Select::make('user_id')
                    ->label('User')
                    ->options(User::query()->pluck('name', 'id'))
                    ->searchable()
                    ->required(),
                Select::make('category_id')
                ->reactive()
                    ->label('Category')
                      ->options(Category::query()->pluck('title', 'id'))
                    ->searchable()
                    ->required(),
                DateTimePicker::make('published_at')
                    ->label('Publication date')
                    ->timezone('Asia/Bangkok'),
                Toggle::make('is_active')
                    ->required(),
            ]);
    }
}
