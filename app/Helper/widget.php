<?php 

namespace App\Helper;
use App\Categories;

class Widget
{

    public function sidebar()
    {
        
        $data       = array(
            "categories" => $categories = Categories::all()
        );
        return $data;
    }
}
