@extends('layouts.shiftcv')
 
@section('content')

<div id="mainpage_accordion_area"> 
          
  <!-- RESUME -->
  <section class="section resume_section even" id="resume">
    <div id="resume_buttons"> <a target="_blank" id="resume_link" href="#" onClick="window.print();"><span class="label">Print</span><span class="fa fa-print icon"></span></a> <a target="_blank" onclick="this.href='data:text/html;charset=UTF-8,'+encodeURIComponent(document.documentElement.outerHTML)"  download="resume.html" id="resume_link_download"><span class="label">Download</span><span class="fa fa-download icon"></span></a> </div>
    <div class="section_header resume_section_header">
      <h2 class="section_title resume_section_title"><a href="#"><span class="fa fa-align-left icon"></span><span class="section_name">Resume</span></a><span class="section_icon"></span></h2>
    </div>
    <div class="section_body resume_section_body">
      <div class="sidebar resume_sidebar">
        <aside class="widget widget_skills">
          <h3 class="widget_title">Skills</h3>
          <div class="widget_inner style_1">
            <div class="skills_row odd first"><span class="caption">Software Development</span><span class="progressbar"><span data-process="90%" class="progress blue"><span class="value">90%</span></span></span></div>
            <div class="skills_row even"><span class="caption">Penetration Testing</span><span class="progressbar"><span data-process="87%" class="progress aqua"><span class="value">87%</span></span></span></div>
            <div class="skills_row odd"><span class="caption">CI/CD</span><span class="progressbar"><span data-process="80%" class="progress green"><span class="value">80%</span></span></span></div>
            <div class="skills_row even"><span class="caption">Customer Identity Management</span><span class="progressbar"><span data-process="76%" class="progress yellow"><span class="value">76%</span></span></span></div>
            
          </div>
        </aside>
        <aside class="widget widget_skills" >
          <h3 class="widget_title">Language skills</h3>
          <div class="widget_inner style_3">
            <div class="skills_row odd first"><span class="caption">Indonesia</span><span class="progressbar"><span data-process="96%" class="progress aqua"></span></span></div>
            <div class="skills_row even"><span class="caption">English</span><span class="progressbar"><span data-process="70%" class="progress green"></span></span></div>
            
          </div>
        </aside>
      </div>
      <div class="wrapper resume_wrapper">
        <div class="category resume_category resume_category_1 first even">
          <div class="category_header resume_category_header">
            <h3 class="category_title"><span class="category_title_icon aqua"></span>Employment</h3>
          </div>
          <div class="category_body resume_category_body">
            <article class="post resume_post resume_post_1 first odd">
              <div class="post_header resume_post_header">
                <div class="resume_period"> <span class="period_from">2017</span> - <span class="period_to period_present">present</span> </div>
                <h4 class="post_title"><span class="post_title_icon aqua"></span><a href="https://www2.deloitte.com/id/en.html" target="_blank" rel="nofollow">Deloitte</a></h4>
                <h5 class="post_subtitle">Cyber Security Consultant</h5>
              </div>
              <div class="post_body resume_post_body">
                <p>
                <ul>
                  <li>Performed external web penetration testing and vulnerability assessment for a client based in Singapore, covering internet-facing websites using WordPress and some proprietary CMS frameworks.</li>
                  <li>Performed penetration test for NFC Card on banking industry.</li>
                  <li>Performed as team lead for building an infrastructure and Continuous Integration / Continuous deployment on cloud environment for software enterprise on largest Telecommunication company in Indonesia.</li>
                  <li>Performed penetration test for API Payment gateway on banking industry.</li>
                  <li>Performed red team for finding a weakness system on banking industry.</li>
                  <li>Performed implementor Customer Identity Access Manager with over millions active user on largest Telecommunication Industry in Indonesia.</li>
                  <li>Performed Implementor Customer Identity Access Manager on banking Industry.</li>
                  <li>Performed penetration tester on one of banking industry on banking Industry.</li>
                </ul>
                </p>
              </div>
            </article>
            <article class="post resume_post resume_post_1 even">
              <div class="post_header resume_post_header">
                <div class="resume_period"> <span class="period_from">2016</span> - <span class="period_to">2017</span> </div>
                <h4 class="post_title"><span class="post_title_icon aqua"></span><a href="post-text.html">Mumu Indonesia</a></h4>
                <h5 class="post_subtitle">Software Engineer</h5>
              </div>
              <div class="post_body resume_post_body">
                <p>
                <ul>
                  <li>Improving system quality by identifying issues and common patterns, and developing standard operating procedures.</li>
                  <li>Enhancing applications by identifying opportunities for improvement, making recommendations, designing and implementing systems.</li>
                  <li>Maintaining and improving existing codebases and peer review code changes.</li>
                  <li>Liaising with colleagues to implement technical designs.</li>
                  <li>Developing a good and secure Supply Chain management application.</li>
                </ul>
                </p>
              </div>
            </article>
            <article class="post resume_post resume_post_2 odd">
              <div class="post_header resume_post_header">
                <div class="resume_period"> <span class="period_from">2013</span> - <span class="period_to ">2016</span> </div>
                <h4 class="post_title"><span class="post_title_icon aqua"></span><a href="post-text.html">Kementerian Badan Usaha Milik Negara</a></h4>
                <h5 class="post_subtitle">IT Programmer</h5>
              </div>
              <div class="post_body resume_post_body">
                <p>
                  <ul>
                    <li>Writing clean, fast PHP to a high standard, in a timely and scalable way. </li>
                    <li>Developing several web-based application reporting.</li>
                    <li>Troubleshoot, test and maintain the core product web application and databases to ensure strong optimization and functionality.</li>
                    <li>Responsible for transfer knowledge to user regarding the application workflow.</li>
                </p>
              </div>
            </article>
          </div>
          <!-- .category_body --> 
        </div>
        <!-- .category -->
        <div class="category resume_category resume_category_2 odd">
          <div class="category_header resume_category_header">
            <h3 class="category_title"><span class="category_title_icon green"></span>Education</h3>
          </div>
          <div class="category_body resume_category_body">
            <article class="post resume_post resume_post_1 first even">
              <div class="post_header resume_post_header">
                <div class="resume_period"> <span class="period_from">2008</span> - <span class="period_to">2013</span> </div>
                <h4 class="post_title"><span class="post_title_icon green"></span><a href="http://gunadarma.ac.id/" target="_blank" rel="nofollow">Gunadarma University</a></h4>
                <h5 class="post_subtitle">Information System</h5>
              </div>
              <div class="post_body resume_post_body">
                <p>Private nonprofit higher education institution in Indonesia. UG was officially founded in 1981. The campus of the university is well known in Depok where it is located. 
                <b>University ranking</b>, Gunadarma University has earned itself a position in the top 50 best educational institutions of Indonesia. Gunadarma University is quite famous as it ranks high in the top 5% of the best universities of the world.</p>
              </div>
            </article>
          </div>
          <!-- /category_body --> 
        </div>
        <!-- /category --> 
        <!-- .category -->
        <div class="category resume_category resume_category_3 odd">
          <div class="category_header resume_category_header">
            <h3 class="category_title"><span class="category_title_icon red"></span>Certification</h3>
          </div>
          <div class="category_body resume_category_body">
            <article class="post resume_post resume_post_1 first even">
              <div class="post_header resume_post_header">
                <div class="resume_period"> <span class="period_to">2021</span> </div>
                <h4 class="post_title"><span class="post_title_icon red"></span><a href="https://www.skillfront.com/Badges/64868890599925" rel="nofollow">ISO/IEC 27001 Information Security Associate™</a></h4>
                <h5 class="post_subtitle">Skillfront</h5>
              </div>
              <div class="post_body resume_post_body"></div>
            </article>
            <article class="post resume_post resume_post_2 first even">
              <div class="post_header resume_post_header">
                <div class="resume_period"> <span class="period_to">2021</span> </div>
                <h4 class="post_title"><span class="post_title_icon red"></span><a href="#">Lead Cybersecurity Professional Certificate (LCSPC)</a></h4>
                <h5 class="post_subtitle">CertiProf - FLCQWTCBDD-DGSKJLGJ-WHNZKKDHZD</h5>
                <div class="post_body resume_post_body"></div>
              </div>
            </article>
            <article class="post resume_post resume_post_3 first even">
              <div class="post_header resume_post_header">
                <div class="resume_period"> <span class="period_to">2018</span> </div>
                <h4 class="post_title"><span class="post_title_icon red"></span><a href="https://www.youracclaim.com/badges/df16fe55-a48a-49fa-949f-e1ae2131aa23/linked_in_profile">ForgeRock Access Management Core Skills</a></h4>
                <h5 class="post_subtitle">Forgerock</h5>
                <div class="post_body resume_post_body"></div>
              </div>
            </article>
          </div>
          <!-- /category_body --> 
        </div>
        <!-- /category --> 
      </div>
      <!-- /wrapper --> 
    </div>
    <!-- /section_body --> 
  </section>
  <!-- /RESUME--> 
        
          
          <!-- CONTACTS -->
          <section class="section contact_section even open" id="contact">
            <div class="section_header contact_section_header">
              <h2 class="section_title contact_section_title"><a href="#"><span class="fa fa-envelope icon"></span><span class="section_name">Contacts</span></a><span class="section_icon"></span></h2>
            </div>
            <div class="section_body contact_section_body">
              
              <div class="sidebar contact_sidebar">
                <aside class="widget widget_qrcode_vcard" id="qrcode-vcard-widget-2">
                  <h3 class="widget_title">VCARD</h3>
                  <div class="widget_inner">
                    <div class="qrcode"></div>
                  </div>
                </aside>
              </div>
              <div class="contact_form">
                <div class="contact_form_data">
                  <div class="sc_contact_form">
                    <h3 class="title">Let's keep in touch</h3>
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form action="{{ URL::to('/contact/do') }}" method="post">
                    @csrf
                      <div class="field">
                        <label class="required" for="sc_contact_form_username">Name</label>
                        <input type="text" name="username" id="sc_contact_form_username" />
                      </div>
                      <div class="field">
                        <label class="required" for="sc_contact_form_email">Email</label>
                        <input type="text" name="email" id="sc_contact_form_email" />
                      </div>
                      <div class="field message">
                        <label class="required" for="sc_contact_form_message">Your Message</label>
                        <textarea name="message" id="sc_contact_form_message"></textarea>
                      </div>
                      <div class="button"> <input type="submit" value="submit"> </div>
                    </form>
                    <div class="result sc_infobox"></div>
                  </div>
                </div>
              </div>
            </div>
            <!-- .section_body --> 
          </section>
          <!-- /CONTACT --> 
        </div>
        <!-- #mainpage_accordion_area --> 
@endsection