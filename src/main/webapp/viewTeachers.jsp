<%@page import="com.entity.Subject"%>
<%@page import="com.entity.Teacher"%>
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
<title>View Teachers</title>
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
	
	<h1>Teachers List</h1>
	<%
		SessionFactory sf  = HibernateUtil.buildSessionFactory();
		Session hibernateSession = sf.openSession();
		List<Teacher> teachers = hibernateSession.createQuery("from Teacher").list();
	%>
	
	<table border="1" align="center" width="30%">
	<tr>
	<th>First Name </th>
	<th>Last Name </th>
	</tr>
		<%		
			for(Teacher teacher : teachers){
				out.print("<tr align=center>");	
				out.print("<td>" + teacher.getName() + "</td>");
				out.print("<td>" + teacher.getLname() + "</td>");
			}
		%>
	</table>
	<br/><br/><br/>
	<footer>
		<nav style="background-color: LightGreen">
		<b>Phase 2 Project: Learners Academy <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>