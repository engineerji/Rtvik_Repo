<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Health Care System</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

</head>

<body class="login-img3-body">
<div class="container">
	<div class="jumbotron text-center">
		<h1 class="form-heading">Health Care System</h1>
	</div>
	<div class="container-admin">
	
	<form class="admin-form" action="WelcomeAdminPage.jsp">
		<div class="input-group">
			<div class="row">
                <div class="col-sm-12">
				 <button class="btn btn-primary btn-lg btn-block" type="submit">Admin Login</button>
				</div>
			</div>
        </div>
	</form>
</div>
</div>

  <div class="container">

    <form class="login-form" action="UserLoginServlet">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <%
        	if(request.getParameter("message")!=null)
        	{
        %>
        	<p style="color: red;"><%=request.getParameter("message") %></p> 
        <%		
        	}
        %>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" class="form-control" placeholder="Username" name="userid" autofocus required>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control" placeholder="Password" name="pass" required>
        </div>
        <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
            </label>
        <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
        <a href="Register.jsp"><button class="btn btn-info btn-lg btn-block" type="button">Register</button></a>
      </div>
    </form>
  </div>


</body>

</html>
