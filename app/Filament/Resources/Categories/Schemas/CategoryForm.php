<?php

namespace App\Filament\Resources\Categories\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class CategoryForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')->required()->minLength(1)->maxLength(150)->placeholder('Enter Title')
                    ->required()
                    ->live(onBlur: true)
                    ->afterStateUpdated(fn(Set $set, ?string $state) => $set('slug', Str::slug($state))),
                TextInput::make('slug')->required()->unique(ignoreRecord: true)->minLength(1)->maxLength(150)
                    ->required(),
                RichEditor::make('content')->columnSpan(1)->required()->minLength(1)->placeholder('Enter Content')
                    ->columnSpanFull(),
                FileUpload::make('image')
                    ->disk('public')
                    ->directory('categories/images')
                    ->image(),
                Toggle::make('is_active')
                    ->required(),
            ]);
    }
}
