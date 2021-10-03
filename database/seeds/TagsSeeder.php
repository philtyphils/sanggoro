<?php

use Illuminate\Database\Seeder;

class TagsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tags')->insert([
            [
                'name'          => "PHP",
                'slug'          => "PHP",
                'created_at'    => date("Y-m-d H:i:s",strtotime("now")),
                'updated_at'    => date("Y-m-d H:i:s",strtotime("now")),
            ],
            [
                'name'          => "Vulnerable",
                'slug'          => "Vulnerable",
                'created_at'    => date("Y-m-d H:i:s",strtotime("now")),
                'updated_at'    => date("Y-m-d H:i:s",strtotime("now")),
            ],
            [
                'name'          => "Laravel",
                'slug'          => "Laravel",
                'created_at'    => date("Y-m-d H:i:s",strtotime("now")),
                'updated_at'    => date("Y-m-d H:i:s",strtotime("now")),
            ],
            [
                'name'          => "Github",
                'slug'          => "Github",
                'created_at'    => date("Y-m-d H:i:s",strtotime("now")),
                'updated_at'    => date("Y-m-d H:i:s",strtotime("now")),
            ],
            [
                'name'          => "Jenkins",
                'slug'          => "Jenkins",
                'created_at'    => date("Y-m-d H:i:s",strtotime("now")),
                'updated_at'    => date("Y-m-d H:i:s",strtotime("now")),
            ],
        ]);
    }
}
