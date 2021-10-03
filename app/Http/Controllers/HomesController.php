<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Categories;
use App\Posts;
use App\Taggables;
use App\Tags;

class HomesController extends Controller
{
    private $paginate = 2;
    private $recentpost_limit = 2;
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return View
     */
    public function index()
    {
        $data = Posts::with(['tags' => function($query){
            $query->select("name","slug"); 
        }])->where("status","Y")->paginate($this->paginate);
      
        return view('index',[
            'posts'     => $data,
            'sidebar'   => app('sidebar')->sidebar(),
            'tagg'      => app('tagging')->tagging(),
            'recent_post' => app('recent')->posting($this->recentpost_limit)
        ]);
    }

    public function tags($tag)
    {
        $data = Posts::with(['tags' => function($query){
            $query->select("name","slug"); 
        }])->where("status","Y")->whereIn('id',function($query) use ($tag) {
            $query->select("taggables.post_id")->from("posts")->join("taggables","posts.id","=","taggables.post_id")->join("tags","taggables.tag_id","=","tags.id")->where("tags.slug",$tag);
        })->paginate($this->paginate);

        $tag_detail = Tags::whereRaw('lower(slug) = ?',$tag)->first();

        return view('tags',[
            'posts'     => $data,
            'sidebar'   => app('sidebar')->sidebar(),
            'tagg'      => app('tagging')->tagging(),
            'selectedSlug' => $tag,
            'tag_detail'    => $tag_detail,
            'recent_post' => app('recent')->posting($this->recentpost_limit)
        ]);
    }

    public function kategori($slug)
    {
        $data = Posts::select("posts.*","categories.name as category","categories.slug as category_slug")->with(['tags' => function($query){
            $query->select("name","slug"); 
        }])->join("categories","posts.category_id","=","categories.id")->where("categories.slug","=",$slug)->where("posts.status","Y")->paginate($this->paginate);

        return view('index',[
            'posts'     => $data,
            'sidebar'   => app('sidebar')->sidebar(),
            'tagg'      => app('tagging')->tagging(),
            'recent_post' => app('recent')->posting($this->recentpost_limit)
        ]);
     
    }

    public function post($year,$month,$slug)
    {
        $data = Posts::select("posts.*","categories.name as category","categories.slug as category_slug")->with(['tags' => function($query){
            $query->select("name","slug"); 
        }])->join("categories","posts.category_id","=","categories.id")
        ->where('posts.post_year',$year)->where("posts.slug",$slug)
        ->where("posts.status","Y")->first();
        return view('single-post',[
            'posts'         => $data,
            'sidebar'       => app('sidebar')->sidebar(),
            'tagg'          => app('tagging')->tagging(),
            'single_post'   => true,
            'recent_post' => app('recent')->posting($this->recentpost_limit)
        ]);
    }

    public function privacy()
    {
        return view('privacy-policy');
    }

    public function profil()
    {
        return view('profil',[
            'profil'    => True
        ]);
    }

    public function contact(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required|max:255'
        ]);
        echo "<pre>";print_r($request->input());die();
    }
}