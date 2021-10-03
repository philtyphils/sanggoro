<?php 

namespace App\Helper;
use App\Tags;

class Tagging
{

    public function tagging()
    {
        
        $data       = Tags::all();
        return $data;
    }
}
