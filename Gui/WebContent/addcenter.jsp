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
            <h3 class="page-header"><i class="fa fa-user-md"></i>ADD CENTER</h3>
			</div>
			<div>
              <a href="WelcomeAdminPage.jsp"><i class="fa fa-sign-out"></i>Sign Out</a>
          </div>
        </div>
      </section>
	  <div class="addcenter">
	  <div class="container1">
	  <%
        	if(request.getParameter("message")!=null)
        	{
        %>
        	<p style="color: red;"><%=request.getParameter("message") %></p> 
        <%		
        	}
        %>
	  	<form action="AddCenterServlet" method="get">
		<div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="name">Diagnostic Center Name</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="name" required>
                </div>
            </div>
			  <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="name">Location</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="location" required>
                </div>
            </div>
			  <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="name">Opening Year</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="openyear" required>
                </div>
            </div>
			 <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="name">Enter Test1 Name</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="test1" required>
                </div>
            </div>
			 <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="name">Enter Test2 Name</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="test2" required>
                </div>
            </div>
			 <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="name">Enter Test3 Name</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="test3" required>
                </div>
            </div>
			
        </div>
		 <div class="row">
                <div class="col-sm-3"><button type="submit" class="btn btn-primary" >Add Center</button></div>
            </div>
	</form>
	  </div>
	  </div>
    </section>
    <!--main content end-->
  </section>


</body>

</html>
