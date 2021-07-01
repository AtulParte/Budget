<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>New Transaction</title>
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

<!-- Circle Stylesheet File -->
<link href="css/circle.css" rel="stylesheet">
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
                      New Transaction
                    </h5>
                  </div>
                  <div>
                      <form action="DemoCont" method="post" role="form" >
                      <div id="sendmessage">Transaction Done</div>
                      <div id="errormessage"></div>
                      <div class="row">
                      <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <input type="hidden" name="email" class="form-control" id="email" value="try45@gmail.com" placeholder="Email..." data-rule="minlen:4" data-msg="Please enter your cost" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <strong>Cost</strong>
                            <input type="number" name="cost" class="form-control" id="cost" placeholder="Cost..." data-rule="minlen:4" data-msg="Please enter your cost" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                            <div class="form-group">
                              <strong>Category</strong>
                            <div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="category">Options</label>
  </div>
  <select class="custom-select" name="category" id="category">
    <option selected>Choose...</option>
    <option value="Rent">Rent</option>
    <option value="Transportation">Transportation</option>
    <option value="Food">Food</option>
    <option value="Gifts">Gifts</option>
    <option value="Shopping">Shopping</option>
    <option value="Bills/Utilities">Bills/Utilities</option>
  </select>
</div>
                            </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                          <strong>Description Of Purchase</strong>
                            <textarea class="form-control" name="description" id="description" rows="5" data-rule="required" data-msg="Description Of Purchase" placeholder="Write Purchase Description..."></textarea>
                            <div class="validation"></div>
                          </div>
                        </div>
                         <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <strong>Date</strong>
                            <input type="date" name="date" class="form-control" id="date" data-rule="minlen:4" data-msg="Please enter date" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <strong>Balance</strong>                            
                            <div class="validation"></div>
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
String sql ="select * from transaction  where email = 'try45@gmail.com' LIMIT 1";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
						
						<input type="number" name="balance" class="form-control" id="balance" placeholder="<%=resultSet.getString("Balance") %>" data-rule="minlen:4" data-msg="Please enter your cost" />
						
								
							
							<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
                          </div>
                        </div>
                        <div class="col-md-12">
                          <button type="submit" class="button button-a button-big button-rouded" value="login">Submit Transaction</button> 
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