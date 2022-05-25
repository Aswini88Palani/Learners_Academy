<%@page import="com.entity.Student"%>
<%@page import="com.entity.Teacher"%>
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
<title>Class Report</title>
</head>
<body>
	<header>
	<nav style="background-color: LightGreen">
	<h1>LEARNERS ACADEMY</h1>
	<h2>Online Management System</h2>
	</nav>
	
	<div align="left">
	<a href="selectClassReport.jsp"><button>Back to Select Report</button></a>
	</div>
	</header> 
	
	<%String clas = request.getParameter("class");%>
	<h1>Class Report for <%=clas%></h1>
	
	<%
		SessionFactory sf  = HibernateUtil.buildSessionFactory();
		Session hibernateSession = sf.openSession();
		List<Classes> classes = hibernateSession.createQuery("from Classes cl where cl.name='" + clas + "'").list();
		Classes clasForReport = classes.get(0);
	%>
	<table align="center" border="1" style="width: 40%;">
	<tr>
	<th>Subject Name </th>
	<th>Teacher Name </th>
	</tr>
	<%	
		for(Subject subject: clasForReport.getSubjects()){
			out.print("<tr>");	
			out.print("<td>" + subject.getName() + "</td>");
			out.print("<td>" + getTeacherName(subject) + "</td>");
			out.print("</tr>");
		}
	%>
	</table>
	<%!
		public String getTeacherName(Subject subject){
			Teacher teacher = subject.getTeacher();
			String name;
			String lname;
		
			if(teacher != null){
				name=teacher.getName();
				lname = teacher.getLname();
				
				return name + " " + lname;
			}else{
				return "No Teacher assigned";
			}
	}
	%>
	<table align="center" border="1" style="width: 40%;">
	<tr>
	<th>Listed Students</th>
	</tr>
	<%
		for(Student student : clasForReport.getStudents()){
			out.print("<tr>");
			out.print("<td>" + student.getName() + " " + student.getFname() + "</td>");
			out.print("</tr>");
		}
	%>
	</table>
	
	<br/>
	<footer>
		<nav style="background-color: LightGreen">
		<b>Phase 2 Project: Learners Academy <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>