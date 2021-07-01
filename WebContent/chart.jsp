<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Chart</title>
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

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Transaction', 'Hours per Day'],
  ['Bills/Utilities', 8],
  ['Transportation', 2],
  ['Food', 4],
  ['Gifts', 2],
  ['Shopping', 4]
 
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Your Expenses', 'width':1500, 'height':600};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
</head>
<body id="page-top">
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- end header -->
	<!--/ Section Services Star /-->
  <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(img/overlay-bg1.jpg)">
    <div class="overlay-mf"></div>
   
      <div class="row">
        <div class="col-sm-12">
        <div class="contact-mf">
            <div id="contact" class="box-shadow-full">
          <div class="title-box text-center">
            <h3 class="title-a">
              Chart
            </h3>
            <p class="subtitle-a" style="font-weight: 500; color: black;">
              Pie Chart Representing Monthly Expenses.<br>
              Serving Up a Budgeting Pie Will Help You To Stay Financially Healthy.
            </p>
            <div class="line-mf"></div>
            <div id="piechart" align="center" class="box-shadow-full"></div>
          </div>
        </div>
      </div>
      </div>
      </div>
      <!--/ Section chart Start /-->
  
      
    
  <!--/ Section chart end /-->
  
<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
  </section>
  <!--/ Section Services End /-->

   


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