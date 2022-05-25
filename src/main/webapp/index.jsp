<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewreport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<style>
body {
	background-image: url('./images/image1.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 20px;
}
</style>
</head>
<body>
	<header>
	<nav style="background-color: LightGreen">
	<h1>LEARNERS ACADEMY</h1>
	<h2>Online Management System</h2>
	</nav><br/><br/>
	</header>
	
	<div align="center">
   	  <form action="ValidateAdmin" method="post">
   	  <h2>Admin Login</h2>
      Enter Username: <input type="text" name="uname" required/><br/><br/>
      Enter Password: <input type="text" name="pword"required/><br/><br/>
      <input type="submit" value="Submit"> <input type=reset value=Reset /><br/>
    </form>
	</div>
	
	<br/><br/><br/><br/>
	<footer>
		<nav style="background-color: LightGreen">
		<b>Phase 2 Project: Learners Academy <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
				
</body>
</html>