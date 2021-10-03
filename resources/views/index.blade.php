@extends('layouts.shiftcv')
 
@section('content')
<section id="breadcrumbs" class="section breadcrumbs_section even">
  <div class="section_header breadcrumbs_section_header">
    <ul class="breadcrumbs">
      <li class="home"><a href="{{ URL::to('/') }}">Home</a></li>
      <li class="current">All Posts</li>
    </ul>
  </div>
</section>
<div id="primary" class="content_area">
  <div id="content" class="site_content blog_content" role="main">
@foreach($posts as $post)
<section class="section blog_section odd">
  <div class="section_header blog_section_header ">
    <h2 class="section_title blog_section_title" ><strong><span class="icon fa fa-pencil"></span><span class="section_name" >{{ $post->updated_at->format('M.d') }}</span></strong></h2>
    <div class="post-info "> 
        <!-- tags -->
        <aside class="widget widget_tag_cloud">
          <div class="tagcloud">
            @foreach($post->tags as $tags) 
            <a href="/tags/{!! Str::lower($tags->slug) !!}">#{{ $tags->name }}</a>
            @endforeach
          </div>
        </aside>
        <!-- /tags -->  
    </div>
  </div>
  <div class="section_body blog_section_body">
    <article class="post ">
      <h3 class="post_title"><a href="/artikel/{!! Str::lower($post->uri) !!}">{{ $post->title }}</a></h3>
      <div class="text">
        {!! Str::words($post->content,"52"," ... ") !!}
        <div class="readmore"><a href="/artikel/{!! Str::lower($post->uri) !!}" class="more-link"><span class="readmore">Read more</span></a></div>
      </div>
    </article>
  </div>
</section>
@endforeach

<div id="nav_pages" class="nav_pages">
  <div class="prev_first"></div>
  <a href="blog-category-arhive.html" class="next">Next</a>
  
  <div class="pages">
    {{ $posts->links() }}
    
  </div>
  <div class="page_x_of_y">Page <span>{{ $posts->firstItem() }}</span> of <span>{{ $posts->total() }}</span></div>
</div>
</div>
</div>
@endsection