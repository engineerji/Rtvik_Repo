<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.glbajaj.hcs.model.Appointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Welcome User</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

</head>

<body>
  <section id="container" class="">
	<header class="header dark-bg">
	<div class="container-user">
	<div class="row">
          <div class="col-lg-11">
			<h1 class="user-heading">Health Care System</h1>
		</div>
	</div>
	</div>
	</header>
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="sub-menu">
            <a href="takeappointment1.jsp">
                <i class="icon_document_alt"></i>
                <span>Take Appointment</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="viewuserappointment.jsp?flag=3">
                <i class="icon_document_alt"></i>
                <span>View Appointment</span>
            </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-11">
            <h3 class="page-header"><i class="fa fa-user-md"></i>VIEW APPOINTMENT</h3>
			</div>
			<div>
              <a href="WelcomePage.jsp"><i class="fa fa-sign-out"></i>Sign Out</a>
          </div>
        </div>
      </section>
	  <div class="container">
	  	<form>
	  		<table class="table">
			<thead class="tablehead">
	  			<tr>
	  				<th>Diagnostic Center Name</th>
	  				<th>Test Name</th>
	  				<th>Date</th>
	  				<th>Time</th>
	  				<th>Status</th>
	  			</tr>
				<thead>
	  			<%
	  				Set<Appointment> apps = (Set) request.getAttribute("apps");
	  				Iterator iterator = apps.iterator();
	  				while(iterator.hasNext())
	  				{
	  					Appointment a = (Appointment) iterator.next();
	  			%>
	  				<tr>
	  					<td><%=a.getDc().getName() %></td>
	  					<td><%=a.getTest().getName() %></td>
	  					<td><%=a.getDate() %></td>
	  					<td><%=a.getTime() %></td>
	  					<td><%=a.isStatus() %></td>
	  				</tr>
	  			<%
	  				}
	  			%>
	  		</table>
	  	</form>
	  </div>
    </section>
    <!--main content end-->
  </section>


</body>

</html>
