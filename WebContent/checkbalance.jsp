<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<!-- Circle Stylesheet File -->
<link href="css/circle.css" rel="stylesheet">

<body id="page-top">
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- end header -->

	<!--/ Section Contact-Footer Star /-->
	<section class="paralax-mf footer-paralax bg-image sect-mt4 route"
		style="background-image: url(img/overlay-bg.jpg)">
		<div class="overlay-mf"></div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="contact-mf">
						<div id="contact" class="box-shadow-full">

							<div class="title-box-2">
								<h5 class="title-left">Your Balance</h5>
							</div>
							<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "budgetTest";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

							<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select * from transaction  where email = 'atulparte345@gmail.com' LIMIT 1";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
							<div class="circle">
								<div class="circle__inner">
									<div class="circle__wrapper">
										<div class="circle__content"><%=resultSet.getString("Balance") %></div>
									</div>
								</div>
							</div>
							<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>



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



</body>

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