<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MyBudget</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="img/logo_4.ico" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap CSS File -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">
</head>
<body id="page-top">
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- end header -->
	
	 <!--/ Section Contact-Footer Star /-->
  <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(img/overlay-bg1.jpg)">
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
                      MyBudget
                    </h5>
                  </div>
                  <strong>Note : Please Monthly Update Your Budget....</strong><br><br>
                  <div>
                      <form action="BudgetCont" method="post" role="form" >
                      <div id="sendmessage">Budget Updated Successful</div>
                      <div id="errormessage"></div>
                      <div class="row">
                      <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <input type="hidden" class="form-control" name="email" id="email" placeholder="Your Email" value="try45@gmail.com" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                          <strong>Budget</strong>
                            <input type="number" class="form-control" name="balance" id="balance" placeholder="Your Budget" data-rule="budget" data-msg="Please enter your budget" />
                            <div class="validation"></div>
                          </div>
                        </div>
                     
                        <div class="col-md-12">
                          <button type="submit" class="button button-a button-big button-rouded" value="update" >Update Budget</button>&nbsp;<button type="submit" class="button button-a button-big button-rouded" value="insert" >Add Budget</button> <a href="checkbalance.jsp">Check Balance</a>
                        </div>
                      </div>
                    </form>
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