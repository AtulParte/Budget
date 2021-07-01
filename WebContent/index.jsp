<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Home</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/logo_4.ico" rel="icon">
  <link href="img/apple-touch-icon1.jpg" rel="apple-touch-icon">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  
</head>

<body id="page-top">

  <!-- header -->
	<jsp:include page="header.jsp" />
	<!-- end header -->

  <!--/ Intro Skew Star /-->
  <div id="home" class="intro route bg-image" style="background-image: url(img/intro-bg8.jpg)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="intro-title mb-4">WELCOME</h1>
          <p class="intro-subtitle"><span class="text-slider-items">Hey There &#128512;,Keep Track On Your Expenses &#129297;,Easy To Use &#129325;,Stay Financially Healthy &#128521;</span><strong class="text-slider"></strong></p>
          <!-- <p class="pt-3"><a class="btn btn-primary btn js-scroll px-4" href="#about" role="button">Learn More</a></p> -->
        </div>
      </div>
    </div>
  </div>
  <!--/ Intro Skew End /-->

  <section id="about" class="about-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="box-shadow-full">
            <div class="row">
              <div class="col-md-6">
                <div class="row">
                  <div class="col-sm-6 col-md-5">
                    <div class="about-img">
                      <img src="img/testimonial-2.jpg" class="img-fluid rounded b-shadow-a" alt="">
                    </div>
                  </div>
                  <div class="col-sm-6 col-md-7">
                    <div class="about-info">
                      <p><span class="title-s">Name: </span> <span>Morgan Freeman</span></p>
                      <p><span class="title-s">Profile: </span> <span>full stack developer</span></p>
                      <p><span class="title-s">Email: </span> <span>contact@example.com</span></p>
                      <p><span class="title-s">Phone: </span> <span>(617) 557-0089</span></p>
                    </div>
                  </div>
                </div>
                <div class="skill-mf">
                  <p class="title-s">Skill</p>
                  <span>HTML</span> <span class="pull-right">85%</span>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 85%;" aria-valuenow="85" aria-valuemin="0"
                      aria-valuemax="100"></div>
                  </div>
                  <span>CSS3</span> <span class="pull-right">75%</span>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                      aria-valuemax="100"></div>
                  </div>
                  <span>PHP</span> <span class="pull-right">50%</span>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                      aria-valuemax="100"></div>
                  </div>
                  <span>JAVASCRIPT</span> <span class="pull-right">90%</span>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0"
                      aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!--/ Section Services Star /-->
  <section id="service" class="services-mf route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a">
              Games
            </h3>
            <p class="subtitle-a">
              Benefits Of Playing Games For Adults Include:
Healthy Brain Stimulation, Development Of Problem-Solving Skills, Stress Relief.
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="service-box">
            <div class="service-ico">
              <span class="ico-circle"><a href="cat.jsp"><i class="ion-ios-game-controller-b"></i></a></span>
            </div>
            <div class="service-content">
              <h2 class="s-title"><a href="cat.jsp">Black Cat</a></h2>
              <p class="s-description text-center">
                It is a fun little strategy game where you have only one goal - to keep the cat from running away. You'll do this by tapping/clicking on a tile which will make it impassable for the cat. Every time you change a tile, the cat will move one space.
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="service-box">
            <div class="service-ico">
              <span class="ico-circle"><a href="sudoko.jsp"><i class="ion-cube"></i></a></span>
            </div>
            <div class="service-content">
              <h2 class="s-title"><a href="sudoko.jsp">Sudoko</a></h2>
              <p class="s-description text-center">
                Sudoku is a logic-based, combinatorial number-placement puzzle. In classic sudoku, the objective is to fill a 9×9 grid with digits so that each column, each row, and each of the nine 3×3 subgrids that compose the grid contains all of the digits from 1 to 9.
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="service-box">
            <div class="service-ico">
              <span class="ico-circle"><a href="chess.jsp"><i class="ion-android-person"></i></a></span>
            </div>
            <div class="service-content">
              <h2 class="s-title"><a href="chess.jsp">Chess</a></h2>
              <p class="s-description text-center">
                Chess is a recreational and competitive board game played between two players. It is sometimes called Western or international chess to distinguish it from related games such as xiangqi.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Services End /-->



  <!--/ Section Blog Star /-->
  <section id="blog" class="blog-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a">
              Economize
            </h3>
            <p class="subtitle-a">
              You Must Learn To Save First And Spend Afterwards!<br> Save Money And Money Will Save You!
            </p>
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="card card-blog">
            <div class="card-img">
              <a href="https://www.goodreads.com/book/show/34885793-the-minimalist-budget-boxed-set---a-practical-guide-on-how-to-spend-less"><img src="img/pos1.jpg" alt="" class="img-fluid"></a>
            </div>
            <div class="card-body">
              <div class="card-category-box">
                <div class="card-category">
                  <h6 class="category">Tip 1</h6>
                </div>
              </div>
              <h3 class="card-title"><a href="https://www.goodreads.com/book/show/34885793-the-minimalist-budget-boxed-set---a-practical-guide-on-how-to-spend-less">Master the 30-day rule</a></h3>
              <p class="card-description">
                The 30-day rule means if you're about to make a major purchase (say, anything over $20) that isn't absolutely necessary, wait 30 days before you buy. Stick that item on a wishlist somewhere, and come back to it in 30 days. If you still want it, go for it! If you don't want it any more, then you'll have saved yourself a lot of cash on something you didn't even really want! This is a great way to get around bad buying impulses.
              </p>
            </div>
            <div class="card-footer">
              <div class="post-author">
                <a href="https://www.goodreads.com/book/show/34885793-the-minimalist-budget-boxed-set---a-practical-guide-on-how-to-spend-less">
                  <img src="img/testimonial-24.jpg" alt="" class="avatar rounded-circle">
                  <span class="author">Simeon Lindstrom</span>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card card-blog">
            <div class="card-img">
              <a href="https://www.goodreads.com/book/show/40733076-the-budgeting-habit"><img src="img/pos2.jpg" alt="" class="img-fluid"></a>
            </div>
            <div class="card-body">
              <div class="card-category-box">
                <div class="card-category">
                  <h6 class="category">tip 2</h6>
                </div>
              </div>
              <h3 class="card-title"><a href="https://www.goodreads.com/book/show/40733076-the-budgeting-habit">Master the 10-second rule</a></h3>
              <p class="card-description">
                The 10-second rule simply states that if you're about to make any purchase, think for 10 seconds about why you shouldn't buy it. Do you really need it? Do you already have something like it? Can you borrow something like it? If you begin to have doubts, just put the item down. You can always buy it some other time!
              </p>
            </div>
            <div class="card-footer">
              <div class="post-author">
                <a href="https://www.goodreads.com/book/show/40733076-the-budgeting-habit">
                  <img src="img/testimonial-23.jpg" alt="" class="avatar rounded-circle">
                  <span class="author">SJ Scott</span>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card card-blog">
            <div class="card-img">
              <a href="https://www.goodreads.com/en/book/show/8050236-the-simple-dollar"><img src="img/pos3.jpg" alt="" class="img-fluid"></a>
            </div>
            <div class="card-body">
              <div class="card-category-box">
                <div class="card-category">
                  <h6 class="category">Tip 3</h6>
                </div>
              </div>
              <h3 class="card-title"><a href="https://www.goodreads.com/en/book/show/8050236-the-simple-dollar">Pay off your credit cards</a></h3>
              <p class="card-description">
               Avoid putting additional money on your credit cards until they're paid off. Every charge you make on a credit card pushes the balance in the wrong direction, increasing the interest you'll owe. Learn to live on the cash in your checking account.
              </p>
            </div>
            <div class="card-footer">
              <div class="post-author">
                <a href="https://www.goodreads.com/en/book/show/8050236-the-simple-dollar">
                  <img src="img/testimonial-22.jpg" alt="" class="avatar rounded-circle">
                  <span class="author">Trent Hamm</span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog End /-->

  <!--/ Section Contact-Footer Star /-->
  <section class="paralax-mf footer-paralax  sect-mt4 route" style="background-image: url(img/overlay-bg1.jpg)">
    <div class="overlay-mf"></div>
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="contact-mf">
            <div id="contact" class="box-shadow-full">
              <div class="row">
                <div class="col-md-6">
                  <div class="title-box-2">
                    <h5 class="title-left">
                      Contact Us
                    </h5>
                  </div>
                  <div>
                      <form action="ContactCont" method="post" role="form" class="contactForm">
                      <div id="sendmessage">Your message has been sent. Thank you!</div>
                      <div id="errormessage"></div>
                      <div class="row">
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                            <div class="form-group">
                              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="" data-msg="Please enter at least 8 chars of subject" />
                              <div class="validation"></div>
                            </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <textarea class="form-control" name="message" id="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12">
                          <button type="submit" class="button button-a button-big button-rouded">Send Message</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="title-box-2 pt-4 pt-md-0">
                    <h5 class="title-left">
                      Get in Touch
                    </h5>
                  </div>
                  <div class="more-info">
                  <h1>Need Help?</h1>
                    <p class="lead">
                      We're here for you. We are happy to answer any questions you might have.Your questions and comments are important to us.Simply fill in contact form to get in touch with us.We really appreciate you taking the time to get in touch.
                    </p>
                    <ul class="list-ico">
                      <li><span class="ion-ios-location"></span> KHARGHAR NAVI MUMBAI, MH 410210</li>
                      <li><span class="ion-ios-telephone"></span> +91 9920380255</li>
                      <li><span class="ion-email"></span> atulparte345@gmail.com</li>
                    </ul>
                  </div>
                  <div class="socials">
                    <ul>
                      <li><a href="https://www.facebook.com/atul.parte.969"><span class="ico-circle"><i class="ion-social-facebook"></i></span></a></li>
                      <li><a href="https://www.instagram.com/atulparte6350/"><span class="ico-circle"><i class="ion-social-instagram"></i></span></a></li>
                      <li><a href="https://twitter.com/AtulParte5"><span class="ico-circle"><i class="ion-social-twitter"></i></span></a></li>
                      <li><a href="https://www.linkedin.com/in/atul-parte-757354191/"><span class="ico-circle"><i class="ion-social-pinterest"></i></span></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
  </section>
  <!--/ Section Contact-footer End /-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/popper/popper.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/counterup/jquery.waypoints.min.js"></script>
  <script src="lib/counterup/jquery.counterup.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/typed/typed.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>


</body>
</html>
