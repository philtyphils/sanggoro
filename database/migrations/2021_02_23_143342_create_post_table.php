<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->string("title"); #judul post
            $table->string("slug"); #judul slug url
            $table->string("uri");
            $table->text("content"); #isi post
            $table->string("meta_description"); #meta description
            $table->string("meta_keywords"); #meta keywords
            $table->enum("status",["Y","N"]); #status post
            $table->year("post_year");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
