<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.glbajaj.hcs.model.Test"%>
<%@page import="java.util.Set"%>
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
	  <div class="container">
	  <div class="addtest2">
	  	<form action="ViewTestServlet" method="get">
		<div class="form-group">
		<div class="container">
		<table class="table">
		<thead class="tablehead">
			<tr>
				<th>ID</th>
				<th>Name</th>
			</tr>
			</thead>
		<tbody>
			<%
				Set<Test> tests = (Set)request.getAttribute("testlist");
				for(Test t : tests)
				{
			%>
				<tr>
					<td><%=t.getTestid()%></td>
					<td><%=t.getName()%></td>
				</tr>
			<%		
				}
				request.setAttribute("testlist", tests);
			%>
			</tbody>
		</table>
		</div>
		<div class="container">
		 <div class="row">
                <div class="col-sm-6">
                    <label class="label3" for="tests">Enter the number of tests to add</label>
                </div>
                <div class="col-sm-6">
                   <input type="number" class="form-control" name="testno" value="<%=request.getParameter("testno")%>"></div>
                </div>
			<div class="row">
                <div class="col-sm-6">
                  	<input type="hidden" name="id" value="<%=request.getAttribute("dcid")%>">
                </div>
            </div>
			<div class="row">
                <div class="col-sm-6">
                 <input type="hidden" name="flag" value="1">
                </div>
            </div>
		<div class="row">
		<div class="col-sm-3"><button type="submit"class="btn btn-info" >Go</button></div></div>
		</div>
	</form>
		<%
				String n = request.getParameter("testno"); 
				if(n==null)
				{
					
				}
				else if(n.length()==0)
				{
					
				}
				else{
		%>
				<form action="AddTestServlet" method="get">
		<%		int n1 = Integer.parseInt(n);
				List<String> testss = new ArrayList<String>();
				for(int i=0;i<n1;i++)
				{
		%>		
			<div class="row">
                <div class="col-sm-3">
                    <label class="label3" for="tests">Test Name:</label>
                </div>
            
                <div class="col-sm-6">
                  <td><input type="text" name="testname<%=i%>"></div>
                </div>
		<%		}%>
				<input type="hidden" name="n1" value="<%=n1%>">
				<input type="hidden" name="dcid" value="<%=request.getAttribute("dcid")%>">
				<div class="row">
				<div class="col-sm-3"><button type="submit" class="btn btn-info" >Submit</button></div></div>
				</form>
		<%		}%>
	  </div></div>
    </section>
    <!--main content end-->
  </section>


</body>

</html>
