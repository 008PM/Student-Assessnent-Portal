<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
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
<jsp:include page="adminsuccess.jsp" />
<form action="show_all_teachers">
	<div style="text-align: center" class="form-group">
						  		<input type="submit" value="SHOW RECORD" class="btn btn-primary">
						  </div>
	</form>	
	<table class="table table-striped table-bordered table-hover ">  
<tr><!-- <th>registration_number</th> --><th>Name</th><th>UserName</th><th>Phone_Number</th><th>email_id</th><th>address</th><th>specialization</th>
<th>Age</th>
<th>Blood_Group</th>
</tr>  
	<c:forEach var="teacher" items="${key4}">   
   <tr class="table-success">  
   <%-- <td>${teacher.reg}</td> --%>  
   <td>${teacher.name}</td>  
   <td>${teacher.uname}</td>  
   <td>${teacher.phone}</td>   
   <td>${teacher.mail}</td>
   <td>${teacher.address}</td>
   <td>${teacher.specialization}</td>
   <td>${teacher.age}</td>
   <td>${teacher.grp}</td>
  <%--  <td>${student.blood_group}</td> --%>
   </tr>  
   </c:forEach>  
</table>
</body>
</html>