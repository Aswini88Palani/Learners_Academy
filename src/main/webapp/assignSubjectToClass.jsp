<%@page import="com.entity.Subject"%>
<%@page import="com.entity.Classes"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.util.HibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	background-image: url('./images/image1.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 20px;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  background-color: lightblue;
}
</style>
<title>Assign Subject To Class</title>
</head>
<body>
	<header>
	<nav style="background-color: LightGreen">
	<h1>LEARNERS ACADEMY</h1>
	<h2>Online Management System</h2>
	</nav>
	</header> 
	
	<div align="left">
	<a href="AdminDashboard.jsp"><button>Back to Admin Dashboard</button></a>
	</div>
		
	<h1>Assigning Subject to a Class</h1>
	<%
		SessionFactory sf  = HibernateUtil.buildSessionFactory();
		Session hibernateSession = sf.openSession();
		List<Classes> classes = hibernateSession.createQuery("from Classes").list();
		List<Subject> subjects = hibernateSession.createQuery("from Subject").list();
	%>
	<form action="AssignSubject" method="post">
	<table align="center" border="1" style="width: 40%;">
	<tr>
	<th>Class Name </th>
	<th>Subject Name </th>
	</tr>
	<tr>
	<td>
	<select name="class">
	<%
		for (Classes clas : classes){
		out.print("<option>" + clas.getName());
		out.print("</option>");
		}
	%>
	</select>
	</td>
	
	<td>
	<select name="subject">
	<%
		for (Subject subject : subjects){
		out.print("<option>" + subject.getName());
		out.print("</option>");
		}
	%>
	</select>
	</td>
	</tr>
	</table><br/>
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