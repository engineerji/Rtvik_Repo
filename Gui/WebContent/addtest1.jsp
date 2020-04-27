<%@page import="java.util.Iterator"%>
<%@page import="com.glbajaj.hcs.model.DiagnosticCenter"%>
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

  <title>Welcome Admin</title>

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
	</header>
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="sub-menu">
            <a href="addcenter.jsp">
                <i class="fa fa-home"></i>
                <span>Add Center</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="deletecenter.jsp">
                <i class="fa fa-home"></i>
                <span>Delete Center</span>
            </a>
          </li>
		   <li class="sub-menu">
            <a href="addtest1.jsp">
                <i class="fa fa-plus-circle"></i>
                <span>Add Test</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="deletetest1.jsp">
                <i class="fa fa-minus-circle"></i>
                <span>Delete Test</span>
            </a>
          </li>
		  <li class="sub-menu">
            <a href="approveappointment.jsp">
                <span>Approve Appointment</span>
            </a>
          </li>
        </ul>
      </div>
    </aside>
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-11">
            <h3 class="page-header"><i class="fa fa-user-md"></i>ADD TEST</h3>
			</div>
			<div>
              <a href="WelcomeAdminPage.jsp"><i class="fa fa-sign-out"></i>Sign Out</a>
          </div>
        </div>
      </section>
	   <div class="addtest1">
	  <div class="container">
	  <%
        	if(request.getParameter("message")!=null)
        	{
        %>
        	<p style="color: red;"><%=request.getParameter("message") %></p> 
        <%		
        	}
        %>
	  	<jsp:include page="/ViewCenterServlet"></jsp:include>
	<form>
	<table class="table">
	<thead class="tablehead">
		<tr class="heads">
			<th>Id</th>
			<th>Name</th>
			<th>Location</th>
			<th>Opening Year</th>
			<th>Action</th>
		</tr>
		</thead>
		<%
			List<DiagnosticCenter> centerlist = (List)request.getAttribute("centerlist");
			Iterator<DiagnosticCenter> iterator = centerlist.iterator();
			while(iterator.hasNext())
			{
				DiagnosticCenter dc = iterator.next();
				%>
				<tbody>
				<tr>
					<td><%=dc.getCenterId()%></td>
					<td><%=dc.getName()%></td>
					<td><%=dc.getLocation()%></td>
					<td><%=dc.getOpeningYear()%></td>
					<td><a href ="ViewTestServlet?id=<%=dc.getCenterId()%>&flag=1"><div class="row">
                <div class="col-sm-3"><button type="submit" name="selectCenter" class="btn btn-info" >Select</button></div>
            </div>
				</tr>
				</tbody>
			<%
			}
		%>
	</table> 
	</form>
	  </div>
	  </div>
    </section>
    <!--main content end-->
  </section>


</body>

</html>
