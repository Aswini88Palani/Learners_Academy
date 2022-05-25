<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/image1.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 20px;
}
</style>
<title>Add Class</title>
</head>
<body>
	<header>
	<nav style="background-color: LightGreen">
	<h1>LEARNERS ACADEMY</h1>
	<h2>Online Management System</h2>
	</nav>
	
	<div align="left">
	<a href="AdminDashboard.jsp"><button type="Submit">Back</button></a>
	</div>
	</header>
	
	<h1>Add Class</h1>
	<form action="AddClass" method="post">
	<label for="class">Class: </label>
  	<input type="text" id="class" name="class"><br><br>
  	<input type="submit" value="Submit">
	</form>
	
	<br/><br/><br/>
	<footer>
		<nav style="background-color: LightGreen">
		<b>Phase 2 Project: Learners Academy <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>