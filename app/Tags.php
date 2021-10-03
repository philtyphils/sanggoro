<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
    protected $table = 'tags';
    protected $primaryKey = 'id';



    public function posts()
    {
        return $this->belongsToMany(Posts::class,'taggables',"post_id","tag_id");
    }
}
