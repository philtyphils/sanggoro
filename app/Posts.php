<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Feed\Feedable;
use Spatie\Feed\FeedItem;

class Posts extends Model implements Feedable
{
    protected $table = 'posts';
    protected $primaryKey = 'id';

    public function toFeedItem(): FeedItem
    {
        return FeedItem::create()
        ->id("/artikel/". $this->uri)
            ->title($this->title)
            ->summary(implode(" ", array_slice(explode(" ", strip_tags($this->content)), 0, 20)))
            ->updated($this->updated_at)
            ->link("/artikel/". $this->uri)
            ->author("Sanggoro.id");
    }

    public static function getFeedItems()
    {
        return Posts::all();
    }

    public function tags()
    {
        return $this->belongsToMany(Tags::class,"taggables","post_id","tag_id");
    }
}
