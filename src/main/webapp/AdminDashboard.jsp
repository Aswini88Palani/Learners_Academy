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
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  background-color: lightblue;
}
</style>
<title>Admin Dashboard</title>
</head>
<body>
	<header>
	<nav style="background-color: LightGreen">
	<h1>LEARNERS ACADEMY</h1>
	<h2>Online Management System</h2>
	</nav>
	
	<div align="center">
	<a href="ChangePassword.jsp"><button type="Submit">Change Password</button></a>
	<a href="LogOut"><button type="Submit">Logout</button></a>
	</div>
	</header> <br/>
	
	<table align="center" border="1" style="width: 40%;">
	<tr>
		<th>Add Menu</th>
		<th>View Menu</th>		
	</tr>
	<tr>
		<td><a href="addClasses.jsp">Class</a><br/></td>
		<td><a href="viewClass.jsp">Classes</a><br/></td>
	</tr>
	<tr>
		<td><a href="addSubject.jsp">Subject</a><br/></td>
		<td><a href="viewSubject.jsp">Subjects</a><br/></td>
	</tr>
	<tr>
		<td><a href="addTeacher.jsp">Teacher</a><br/></td>
		<td><a href="viewTeachers.jsp">Teachers</a><br/></td>
	</tr>
	<tr>
		<td><a href="addStudent.jsp">Student</a><br/></td>
		<td><a href="viewStudent.jsp">Students</a><br/></td>
	</tr>
	</table>
	<br>
	
	<a href="assignStudentToClass.jsp"><button>Assign Student to Class</button></a>
	<a href="assignTeacherToSubject.jsp"><button>Assign Teacher to Subject</button></a>
	<a href="assignSubjectToClass.jsp"><button>Assign Subject to Class</button></a><br/><br/>
	<a href="selectClassReport.jsp"><button>Select a Class for Report</button></a>
			
	<br/><br/><br/><br/>
	<footer>
		<nav style="background-color: LightGreen">
		<b>Phase 2 Project: Learners Academy <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>

</body>
</html>