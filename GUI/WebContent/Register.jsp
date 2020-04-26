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

  <title>Register</title>

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

<body class="register-form">
  <section id="container" class="">
	<header class="header dark-bg">
	<div class="container-user">
	<div class="row">
          <div class="col-lg-11">
			<h1 class="user-heading">Health Care System</h1>
		</div>
		
	</div>
	</header>
    <div>
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-11">
		  <div class="page-header-register">
            <h3 class="page-header"></i>REGISTER USER</h3>
			</div></div>
			<div class="col-lg-1">
              <a href="login.jsp"><button class="btn btn-primary btn-lg btn-block" type="submit">HOME</button></a>
          </div>
        </div>
      </section>
	  <div class="container-rapid">
    </div>
  </section>
  <div class="register">
	<div class="container">
		<div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="name">Name</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="name" required>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="age">Age</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="number" class="form-control" name="age" required>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="gender">Gender</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1">
                    <input type="radio" class="form-control" name="gender" value="male">Male
				</div>
				<div class="col-sm-1">
					<input type="radio" class="form-control" name="gender" value="female">Female
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="pass">Password</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="password" class="form-control" name="password" required>
                </div>
            </div>
        </div>
		   <div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="conpass">Confirm Password</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="password" class="form-control" name="confirmpassword" required>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="email">Email address:</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="email" class="form-control" name="email" required>
                </div>
            </div>
        </div>
		   <div class="form-group">
            <div class="row">
                <div class="col-sm-12">
                    <label class="labels" for="contact">Contact</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <input type="number" class="form-control" name="contact" required>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-3"><button type="submit" class="btn btn-primary" >REGISTER</button></div>
            </div>
       
        </div>
	</div>
	</div>

</body>

</html>
