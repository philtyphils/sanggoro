<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
@php
  $title = ""
@endphp
@if(isset($single_post))
<meta name="keywords" content="{{ $posts->meta_keywords }}">
<meta name="description" content="{{ $posts->meta_description }}">
@php
  $title = "| ".$posts->title
@endphp
@endif
<title>Sanggoro {{ $title }}</title>
<link rel="shortcut icon" type="image/x-icon" href="/shiftcv/images/favicon.ico"/>
<link rel="stylesheet" type="text/css" media="all" href="/shiftcv/style/style.css">
<link rel="stylesheet" type="text/css" media="all" href="/shiftcv/style/responsive.css">

<!--[if lt IE 9]>
	<script src="js/html5.js" type="text/javascript"></script>
<![endif]-->

</head>
<body class="home blog dark">
<div class="switherHead"></div>
<div class="colored">
  <div class="blue"></div>
  <div class="aqua"></div>
  <div class="green"></div>
  <div class="yellow"></div>
  <div class="red"></div>
</div>
<div class="hfeed site" id="page">
  <header role="banner" class="site_header" id="header">
    <div class="social_links">
      <ul>
        <li class="rss"><a href="{{ URL::to('/feed') }}" target="_blank" title="RSS">RSS</a></li>
        <li class="fb"><a href="https://www.facebook.com/philtyphils/" target="_blank" title="Facebook">Facebook</a></li>
        <li class="tw"><a href="https://twitter.com/philtyphils" target="_blank" title="Twitter">Twitter</a></li>
        <li class="lnkd"><a href="https://www.linkedin.com/in/sanggoro/" target="_blank" title="Linkedin">Linkedin</a></li>
      </ul>
    </div>
  </header>
  <div id="main"  class="right_sidebar">
    @if(!isset($profil))
    <section id="profile" class="section profile_section odd first blog_page"> <a href="{{ URL::to('/profil') }}" id="profile_page_link"><span class="fa fa-user icon"></span><span class="label">Profile</span></a>
      <div class="section_header profile_section_header">
        <div id="profile_header">
          <div id="profile_user">
            <div id="profile_photo"><img src="/shiftcv/images/favicon.png" alt="sanggoro-logo" /></div>
            <div id="profile_name_area">
              <div id="profile_name">
                <h1 id="profile_title"><span class="firstname">Sanggoro</span> <span class="lastname"></span></h1>
                <h4 id="profile_position"> IT Entusiast</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    @else
    <section class="section profile_section first odd" id="profile"> <a id="blog_page_link" href="{{ URL::to('/') }}"><span class="fa fa-pencil icon"></span><span class="label">Blog</span></a>
      <div class="section_header profile_section_header opened">
        <h2 class="section_title profile_section_title vis"><a href="#"><span class="fa fa-user icon"></span><span class="section_name">Profile</span></a><span class="section_icon"></span></h2>
        <div id="profile_header">
          <div id="profile_user">
            <div id="profile_photo"><img src="/shiftcv/images/favicon.png" alt="sanggoro" /></div>
            <div id="profile_name_area">
              <div id="profile_name">
                <h1 id="profile_title"><span class="firstname">Sanggoro</span> <span class="lastname"></span></h1>
                <h4 id="profile_position"> IT Entusiast</h4>
              </div>
            </div>
          </div>
          <div id="profile_data">
            <div class="profile_row name"> <span class="th">Name:</span><span class="td">sanggoro</span> </div>
            <div class="profile_row email"> <span class="th">Email:</span><span class="td">me@sanggoro.id</span> </div>
            <div class="profile_row website"> <span class="th">Website:</span><span class="td"><a target="_blank" href="http://sanggoro.id">http://sanggoro.id</a></span> </div>
          </div>
        </div>
      </div>
      <div class="section_body profile_section_body">
        <div class="proile_body"> Passionate in Information technology has more than 5 years of professional experience in the Information Technology field, specializing in enterprise software development and Information Security.
I have been building a variety of web apps and performed as a penetration tester for various companies. </div>
      </div>
    </section>
    @endif

    @yield('content')
    
    
    @if(!isset($profil))
    <div id="secondary" class="widget_area sidebar_blog right_sidebar sidebar-blog" role="complementary"> 
      <!-- Categories -->
      <aside class="widget widget_categories">
        <h3 class="widget_title">Kategori</h3>
        <ul>
          @foreach($sidebar['categories'] as $sidebar)
            <li class="cat-item"><a href="/artikel/kategori/{!! Str::lower($sidebar->slug) !!}" title="Lihat semua post di kategori {{ $sidebar->name }}">{{ $sidebar->name }}</a> </li>
          @endforeach
      
        </ul>
      </aside>
      <!-- /Categories --> 
      
      <!-- Recent Posts -->
      <aside class="widget widget_themerex_recent_posts">
        <h3 class="widget_title">Posting Terbaru</h3>
        <ul>
          @foreach($recent_post as $post)
            <li class="article">
              <h4 class="title"><a href="{{ URL::to('/artikel') }}/{{ $post->uri }}" title="{{ $post->title }}" rel="follow">{{ $post->title }}</a></h4>
              <ol class="icons">
                <li class="post_date"><span class="icon-time"></span>{{ $post->updated_at->format('M.d') }}</li>
                <li class="post_author"><span class="fa fa-list-alt"></span>{{ $post->name }}</li>
              </ol>
            </li>
          @endforeach
        </ul>
      </aside>
      <!-- /Recent Posts --> 
      
      <!-- tags -->
      <aside class="widget widget_tag_cloud">
        <h3 class="widget_title">Tags</h3>
        <div class="tagcloud"> 
          
          @foreach($tagg as $tags)
            <a href="/tags/{!! Str::lower($tags->slug) !!}">#{{ $tags->name }}</a> 
          @endforeach
        </div>
      </aside>
      <!-- /tags --> 
    </div>
    @endif
  </div>
  <!-- #main -->
  
  <footer role="contentinfo" class="site_footer" id="footer">
    <div class="term_condition" > <a href="{{ URL::to('/privacy-policy') }}" style="color:#6ca338">Privacy Policy</a> | <a href="#" style="color:#6ca338">Terms of Services </a> </div>
    <div class="footer_copyright"> Sanggoro &copy; 2021 All Rights Reserved. </div>
  </footer>
</div>
<!-- #page --> 

<!-- connect js --> 
<script type="text/javascript" src="/shiftcv/js/jquery.min.js"></script>

<script type="text/javascript" src="/shiftcv/js/jquery.tools.custom.js"></script> 
<script type="text/javascript" src="/shiftcv/js/jquery.flexslider.min.js"></script> 
<script type="text/javascript" src="/shiftcv/js/jquery.prettyPhoto.js"></script> 
<script type="text/javascript" src="/shiftcv/js/jquery.isotope.min.js"></script> 
<script type="text/javascript" src="/shiftcv/js/jquery.cookie.js"></script> 
<script type="text/javascript" src="/shiftcv/js/mediaelement.min.js"></script> 
<script type="text/javascript" src="/shiftcv/js/jquery.qrcode-0.6.0.min.js"></script> 
<script type="text/javascript" src="/shiftcv/js/googlemap_init.js"></script> 
<script type="text/javascript" src="/shiftcv/js/jquery.easing.js"></script> 
<script type="text/javascript" src="/shiftcv/js/jquery.reject.js"></script> 

<script type="text/javascript" src="/shiftcv/js/utils.js"></script> 
<script type="text/javascript" src="/shiftcv/js/lib.js"></script>

</body>
</html>