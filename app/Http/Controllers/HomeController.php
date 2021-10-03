<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;
use App\Tags;
use App\Taggables;
use DataTables;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $page = "adminHome";
        return view('admin/index',[
            "page" => $page
        ]);
	}
	
	public function post($id)
    {
        $data = Posts::with('tags')->where('id',$id)->first();
       
        $tag  = Tags::get();
        $page = "post";
        return view('admin/post',[
            "data"	=> $data,
            "tag"   => $tag,
            "page" => $page
        ]);
    }

    public function posts()
    {
        $tag  = Tags::get();
        $page = "post";
        return view('admin/post',[
            "tag"   => $tag,
            "page" => $page
        ]);
    }
    public function action(Request $request)
    {
        $validated = $request->validate([
            'id' => 'required|integer',
            'title' => 'required|max:255',
            'meta_keywords' => 'required',
            'meta_description' => 'required',
            'content' => 'required',
            'tag' => 'required',
        ]);
        

        switch ($request->input('action')) {
            case 'edit':
                /** cek status of post */
                $status = "N";
                if($request->has('status')){
                    $status = "Y";
                }

                /** Converted title to slug */
                $slug = strtolower(str_replace(" ","-",$request->input('title')));

                /** Geneted Uri */
                $uri = date("Y")."/".date("m")."/".$slug;

                /** Update record */
                $post = Posts::where('id',$request->input('id'))->update(
                    [
                        'title'             => $request->input('title'),
                        'slug'              => $slug,
                        'uri'               => $uri,
                        'meta_keywords'     => $request->input('meta_keywords'),
                        'meta_description'  => $request->input('meta_description'),
                        'content'           => $request->input('content'),
                        'post_year'         => date('Y'),
                        'status'            => $status
                    ]
                );

            
                

                /** Update or Create Tag */
                $tag = $request->input('tag');
                $delete = Taggables::where("post_id",$request->input('id'))->delete(); //** Delete All Unrelevant Tag */
                for($i=0;$i<count($tag);$i++){
                    $Tag = Taggables::updateOrCreate(
                        ['tag_id' => $tag[$i],'post_id' => $request->input('id')],
                        ['tag_id' => $tag[$i],'post_id' => $request->input('id')]
                    );
                }

                
               

                break;
            case 'nosave':
    
                break;
        }
        
        return redirect('/home');
    }

    public function getPost(Request $request)
    {
        if ($request->ajax()) {

            $data = Posts::select('id','title','updated_at','status');

			return Datatables::of($data)
					->editColumn('status', function($row) {
						$response = "<span class='bg-red'>Deactive</span>";
						if($row->status == "Y")
						{
							$response = "<span class='bg-green'>Active</span>";
						}
						return $response;
					})
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                        $btn = '<a href="/post/'.$row->id.'" target="_blank" class="edit btn btn-primary btn-sm">View</a>';
                        return $btn;

                    })
					->rawColumns(['status','action'])
					->escapeColumns()

                    ->make(true);

        }
    }
}
