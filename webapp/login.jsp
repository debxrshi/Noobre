<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%            	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Malware Scanner Home</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/index.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Poppins:wght@100;400&display=swap"
	rel="stylesheet">
	<link rel="stylesheet" href="css/styles.css">
<script src="https://kit.fontawesome.com/166366233a.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="navbar">
		<a href="#" class="logo">niggaRADAR</a>
		<nav>
			<ul class="links">
				<li><a href="index.jsp">HOME </a></li>
				<li><a href="vendors.jsp">VENDOR LIST</a></li>
				<li><a href="scans.jsp">YOUR SCANS</a></li>
				<li><a href="login.jsp">SIGN IN</a></li>
				<label class="icons"> <i class="fa-solid fa-bars"></i>
				</label>
			</ul>
		</nav>
	</div>
	<div class="popup">
		<div class="close-btn">&times;</div>
		<div class="form">
		<form action="login" method="post">
			<h2>Log In</h2> 
			<div class="form-element">
				<label for="first-name">Username</label>
				<input type="text" id="first-name" placeholder="Enter your username or Email" name="user" required>
			</div>
			<div class="form-element">
				<label for="password">Password</label>
				<input type="password" id="password" placeholder="Enter your password" name="pass" required>
			</div>
			<div class="form-element">
				<button>Sign In</button>
			</div>
			<div class="form-element">
				<a href="#">Forgot Password</a>
			</div>
			</form>
		</div> 
	</div>
</body>
</html>