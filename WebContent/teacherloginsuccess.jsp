<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<nav class=" nav nav-tabs navbar navbar-default">
  <div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="dashboard1.jsp">Dashboard</a></li>
	      <li><a href="teacher_acces_student.jsp">Student</a></li>
	      <!-- <li><a href="#">Schedule</a></li>
	      <li><a href="#">Courses</a></li> -->
	      <li><a href="messages.jsp">Messages</a></li>
	      <li><a href="Assignments.jsp">Assignments</a></li>
	      
  </div>
    <div style="float:right">
	    <ul class="nav navbar-nav">
	      <%-- <li><a href="#">Logged in as ${key}</a></li> --%>
	      <li><form action="logout" method="post">
	     <button id="logout-btn" type=submit style="border: none;background: none;color: #777;margin-top: 14px;">Logout</button> </form></li>
	    </ul>
    </div>
</nav>

</body>
</html>