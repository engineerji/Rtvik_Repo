<%@page import="com.glbajaj.hcs.model.Test"%>
<%@page import="java.util.Set"%>
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

<body onload="setDateTime()">
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
            <a href="viewuserappointment.jsp">
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
            <h3 class="page-header"><i class="fa fa-user-md"></i>TAKE APPOINTMENT</h3>
			</div>
			<div>
              <a href="WelcomePage.jsp"><i class="fa fa-sign-out"></i>Sign Out</a>
          </div>
        </div>
      </section>
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
		<tr>
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
				<tr>
					<td><%=dc.getCenterId()%></td>
					<td><%=dc.getName()%></td>
					<td><%=dc.getLocation()%></td>
					<td><%=dc.getOpeningYear()%></td>
					<td><a href ="ViewTestServlet?id=<%=dc.getCenterId()%>&flag=3"><input type="button" class="btn btn-info" value="SELECT" name="selectCenter"></a></td>
				</tr>
			<%
			}
			String dcid = request.getParameter("id");
			request.setAttribute("dcid", dcid);
		%>
	</table> 
	<input type="hidden" name="flag" value="3"> 
	</form>
	
	<%
		if(request.getParameter("id")!=null)
		{
	%>
		<form action="AddAppointmentServlet" method="get">
		<input type="hidden" name="dcid" value="<%=request.getParameter("id")%>">
		<div class="take">
		<table class="table">
		<thead class="tablehead">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Action</th>
			</tr>
		</thead>			
			<%
				Set<Test> tests = (Set)request.getAttribute("testlist");
				for(Test t : tests)
				{
			%>
				<tr>
					<td><%=t.getTestid()%></td>
					<td><%=t.getName()%></td>
					<td><input type="radio" name="radio" onclick="enableButton()" value="<%=t.getTestid()%>">SELECT</td>
				</tr>
			<%		
				}
				
			%>
		</table>
		</div>
		<br>
		<div class="row">
		<div class="col-sm-2">
		<input type="date" class="form-control"name="date" id="date" required></div>
		<div class="col-sm-2">
		<input type="time" class="form-control" name="time" id="time" required></div>
		</div>
		<br>
		<div class="row">
		<div class="col-sm-4">
		<input type="submit" class="btn btn-success" value="CONFIRM APPOINTMENT"  id="button" disabled="disabled"></div></div>
	</form>
	<%	
		}
	%>
	  </div>
    </section>
    <!--main content end-->
  </section>
</body>

<script type="text/javascript">
	function enableButton(){
		document.getElementById("button").disabled = false;
	}
	
	function addZero(x,n) {
		while (x.toString().length < n) {
		    x = "0" + x;
		}
		return x;
	}
	
	function setDateTime(){
		var d = new Date();
		var d1 = new Date(document.getElementById("date").value);
		
		var h = addZero(d.getHours(), 2);
		var m = addZero(d.getMinutes(), 2);
		var s = addZero(d.getSeconds(), 2);
		var time = h+":"+m+":"+s;
		
		var month = d.getMonth()+1;
		if(month<10)
			month = "0"+month;
		var date = d.getDate();
		if(date<10)
			date = "0"+date;
		
		var t = document.getElementById("time").value;
		
		if(h>18)
		{	
			date = d.getDate()+1;
			var todaydate = d.getFullYear()+'-'+month+'-'+date;
			document.getElementById("date").min = todaydate;
			document.getElementById("time").min = "09:00:00";
			document.getElementById("time").max = "18:00:00";
		}
		else if(h<9)
		{
			var todaydate = d.getFullYear()+'-'+month+'-'+date;
			document.getElementById("date").min = todaydate;
			document.getElementById("time").min = "09:00:00";
			document.getElementById("time").max = "18:00:00";
		}
		else if(d.getTime() > d1.getTime())
		{
			var todaydate = d.getFullYear()+'-'+month+'-'+date;
			document.getElementById("date").min = todaydate;
			document.getElementById("time").min = time;
			document.getElementById("time").max = "18:00:00";
		}
		else
		{
			var todaydate = d.getFullYear()+'-'+month+'-'+date;
			document.getElementById("date").min = todaydate;
			document.getElementById("time").min = "09:00:00";
			document.getElementById("time").max = "18:00:00";
		}
	}
</script>

</html>
