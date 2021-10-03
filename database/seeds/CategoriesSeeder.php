<?php

use Illuminate\Database\Seeder;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
        [
            'name'               => "Programming",
            'slug'              => "Programming",  
            'color'             => "#4ca5d0",          
            'created_at'        => date("Y-m-d H:i:s",strtotime("now")),
            'updated_at'        => date("Y-m-d H:i:s",strtotime("now")),
        ],
        [ 
            'name'               => "Penetraion tester",
            'slug'              => "Penetraion-tester",
            'color'             => "#e82c0c",            
            'created_at'        => date("Y-m-d H:i:s",strtotime("now")),
            'updated_at'        => date("Y-m-d H:i:s",strtotime("now")),
        ],
        [ 
            'name'               => "DevSecOps",
            'slug'              => "Development-Security-Operataions", 
            'color'             => "#6ca338",             
            'created_at'        => date("Y-m-d H:i:s",strtotime("now")),
            'updated_at'        => date("Y-m-d H:i:s",strtotime("now")),
        ]
        ]);
    }
}
