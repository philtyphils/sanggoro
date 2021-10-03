@extends('layouts.shiftcv')
@section('content')
<div id="primary" class="content_area">
  <div id="content" class="site_content post_content" role="main">
    <section class="section post_section blog_section">
      <div class="section_header post_section_header ">

        <h2 class="section_title post_section_title"><strong><span class="icon fa fa-pencil"></span><span class="section_name">{{ $posts->updated_at->format('d.M') }}</span></strong></h2>
        <div class="post-info"> 
           <!-- tags -->
            <aside class="widget widget_tag_cloud">
              <div class="tagcloud">
                @foreach($posts->tags as $tags) 
                <a href="/tags/{!! Str::lower($tags->slug) !!}">#{{ $tags->name }}</a>
                @endforeach
              </div>
            </aside>
            <!-- /tags --> 
        </div> 
      </div>
      <div class="section_body post_section_body">
        <article class="post" >
          <h1 class="post_title">{{ $posts->title }}</h1>
          <!-- <div class="post_thumb"> <img src="images_post/girl.jpg" alt="Quisque odio eros" /> </div> -->
          <div class="content_text">
            
            {!! $posts->content !!}
         </div>
          <div class="tags_section">
            <div class="tags_label">Tags:</div>
            <ul id="post_tags">
              @foreach($posts->tags as $tags) 
              <li><a href="/tags/{!! Str::lower($tags->slug) !!}">#{{ $tags->name }}</a></li>
              @endforeach
            </ul>
          </div>
          <div class="block-social">
            <div class="soc_label">Share this Story:</div>
            <ul id="post_social_share">
              <li class="tw"><a target="_blank" href="https://twitter.com/share?text={{ URL::current() }}" title="Twitter">Twitter</a> </li>
              <li class="fb"><a target="_blank" href="http://www.facebook.com/share.php?u={{ URL::current() }}" title="Facebook">Facebook</a></li>
              <li class="gplus"><a target="_blank" href="https://plusone.google.com/_/+1/confirm?url={{ URL::current() }}" title="Google+">Google+</a></li>
            </ul>
          </div>
        </article>        
        <div id="related_posts">
          <h3 class="section_title"><span class="icon"></span>Related posts</h3>
          <div id="post_author">
            <h3><a href="author.html"><span>FEB.24</span> — Membuat Syntax Highlighter Pada Website</a></h3>
            <div class="extra_wrap">
              <div class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
            </div>
          </div>
          <br/>
          <div id="post_author">
            <h3><a href="author.html"><span>MAR.01</span> —  admin</a></h3>
            <div class="extra_wrap">
              <div class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
            </div>
          </div>
          <br/>
          <div id="post_author">
            <h3><a href="author.html"><span>3.</span> — admin</a></h3>
            <div class="extra_wrap">
              <div class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
            </div>
          </div>
          
        </div>
        <div id="comments" class="post_comments">
          <div id="respond">
            
            <!-- /comment-list -->
            
            <h3 id="reply-title">Leave a comment</h3>
            <div id="disqus_thread"></div>
<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://sanggoro.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
            
          </div>
          <!-- #respond --> 
          
        </div>
        
        <!-- #comments --> 
        <a href="#comments" id="scrollTo"><span class="label">Comment</span><span class="icon fa fa-comment"></span></a> </div>
      
      <!-- #post_content --> 
    </section>
  </div>
  <!-- #primary --> 
</div>



@endsection
    