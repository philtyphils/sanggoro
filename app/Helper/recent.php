<?php 

namespace App\Helper;
use App\Posts;

class Recent
{

    public function posting($limit)
    {
        
        $data       = Posts::join('categories',"posts.category_id","=","categories.id")->orderBy('posts.updated_at','desc')->limit($limit)->get();
        return $data;
    }
}
