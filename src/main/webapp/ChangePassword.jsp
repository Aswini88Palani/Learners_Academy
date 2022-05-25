<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ChangePassword</title>
<style>
body {
	background-image: url('./images/image1.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 18px;
}
</style>
</head>
<body>
	<header>
	<nav style="background-color: LightGreen">
	<h1>LEARNERS ACADEMY</h1>
	<h2>Online Management System</h2>
	</nav>
	</header>
	
	<div align=left>
	<a href="AdminDashboard.jsp"><input type=submit value=Back></a>
	</div>
	
	<h3>Change Admin Password</h3>
	
	<div align="center">
	<div style="border:3px solid blue;width:30%;border-radius:50px;padding:20px">
	<form action="ChangePassword" method="post">
	<div class="mb-3">
	Enter Username: <input type="text" name="uname" required/>
	</div><br/>
	<div class="mb-3">
	Enter New Password:	<input type="password" name="newpass" required/>
	</div><br/>
	<input class="btn btn-primary mb-3" type="submit" value="Change">
	</form>
	</div></div>
	
	<br/><br/><br/><br/>
	<footer>
		<nav style="background-color: LightGreen">
		<b>Phase 2 Project: Learners Academy <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>

</body>
</html>