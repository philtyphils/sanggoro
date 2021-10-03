<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Taggables extends Model
{
    protected $table = 'taggables';
    protected $primaryKey = 'id';
    protected $fillable = ['tag_id','post_id'];
}
