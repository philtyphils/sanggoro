<?php

use Illuminate\Database\Seeder;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('posts')->insert([
        [
            'category_id'       => 1,
            'title'             => "Membuat Syntax Highlighter Pada Website",
            'slug'              => "membuat-syntax-highlighter-pada-website",  
            'uri'               => date("Y")."/".date("m")."/membuat-syntax-highlighter-pada-website",
            'content'           => Storage::disk('local')->get('content/Membuat Syntax Highlighter pada Website.txt'),
            'meta_description'  => "sanggoro — Syntax highlighter adalah sebuah fitur yang bisa kita manfaatkan untuk mempermudah dalam penulisan sebuah kode, dikarena fitur ini akan memberikan warna yang berbeda-beda pada sebuah kode function, class, variabel dan lain sebaginya.",
            'meta_keywords'     => "Syntax Highlighter, Syntax Highlighter Online, Membuat sysntax Highlighter",
            'status'            => "Y",
            'post_year'         => date("Y"),
            'created_at'        => date("Y-m-d H:i:s",strtotime("now")),
            'updated_at'        => date("Y-m-d H:i:s",strtotime("now")),
        ]
        //[
        //    'category_id'       => 2,
        //    'title'             => $title,
        //    'slug'              => str_replace(" ","-",$title),  
        //    'uri'               => date("Y")."/".date("M")."/".str_replace(" ","-",$title),
        //    'content'           => $content. " ".Str::random(32),
        //    'meta_description'  => "sanggoro - ".$title." ".substr($content,12,0),
        //    'meta_keywords'     => Str::random(5).", ".Str::random(6).", ".Str::random(4),
        //    'status'            => "Y",
        //    'post_year'         => date("Y"),
        //    'created_at'        => date("Y-m-d H:i:s",strtotime("now")),
        //    'updated_at'        => date("Y-m-d H:i:s",strtotime("now")),
        //]
        ]);
    }
}
