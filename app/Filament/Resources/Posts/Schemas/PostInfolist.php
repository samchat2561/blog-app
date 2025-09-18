<?php

namespace App\Filament\Resources\Posts\Schemas;

use Filament\Infolists\Components\IconEntry;
use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class PostInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('title'),
                TextEntry::make('slug'),
                ImageEntry::make('image')
                    ->disk('public')
                    ->placeholder('-'),
                ImageEntry::make('detail_image')
                    ->disk('public')
                    ->placeholder('-'),
                TextEntry::make('preview_text')
                    ->placeholder('-')
                    ->columnSpanFull(),
                TextEntry::make('detail_text')
                    ->placeholder('-')
                    ->columnSpanFull(),
                TextEntry::make('user_id')
                    ->numeric(),
                TextEntry::make('category.title')
                    ->label('Category'),
                TextEntry::make('published_at')
                    ->dateTime()
                    ->placeholder('-'),
                IconEntry::make('is_active')
                    ->boolean(),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('updated_at')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
