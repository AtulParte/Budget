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
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  
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
              
                <div class="title-box-2">
                    <h5 class="title-left">
                      Transactions History
                    </h5>
                  </div>
<style>
        table.scrolldown {
            width: 100%;
            border-spacing: 0;
            border: 2px solid black;
        }
        table.scrolldown tbody, table.scrolldown thead {
            display: block;
        } 
        thead tr th {
            height: 40px; 
            line-height: 40px;
        }      
        table.scrolldown tbody {
            height: 300px; 
            overflow-y: auto;
            overflow-x: hidden; 
        }          
        tbody { 
            border-top: 2px solid black;
        }          
        tbody td, thead th {
            width : 200px;
            border-right: 2px solid black;
        }
        td {
            text-align:center;
        }
    </style>
    <div style="overflow-x:auto;">
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
<table class="scrolldown" align="center" cellpadding="5" cellspacing="5" border="1" wi>
<tr>

</tr>
<tr bgcolor="#87CEFA">
<td style="text-align:center"><b>Cost</b></td>
<td style="text-align:center"><b>Category</b></td>
<td style="text-align:center"><b>Description</b></td>
<td style="text-align:center"><b>Date</b></td>
<td style="text-align:center"><b>Balance</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM transaction";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#F0F8FF">

<td style="text-align:center"><%=resultSet.getString("Cost") %></td>
<td style="text-align:center"><%=resultSet.getString("Category") %></td>
<td style="text-align:center"><%=resultSet.getString("Description") %></td>
<td style="text-align:center"><%=resultSet.getString("Date") %></td>
<td style="text-align:center"><%=resultSet.getString("Balance") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
<br>
      <div class="col-md-12">
      <form action="#" method="post" role="form" >
                          <button type="submit" class="button button-a button-rouded">Clear Transactions</button>
                          </form>
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