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
<jsp:include page="studentloginsuccess.jsp" />
<%-- <form action="overall">
  				<input type="text" id="per_det" name="regno">
  				
  				<input type="submit">
  			</form> --%>
${key6}
<%-- <form action="personaldetails">
  				<input type="text" id="per_det" name="per_det">
  				
  				<input type="submit">
  			</form>
<h1>details</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Name</th><th>registration_number</th><th>class1</th><th>address</th><th>email_id</th><th>address</th>
<th>father_name</th>
<th>mother_name</th>
<th>age</th>
<th>blood_group</th>
</tr>  
   <c:forEach var="student" items="${key3}">   
   <tr>  
   <td>${student.name}</td>  
   <td>${student.registration_number}</td>  
   <td>${student.class1}</td>  
   <td>${student.address}</td>   
   <td>${student.email_id}</td>
   <td>${student.address}</td>
   <td>${student.father_name}</td>
   <td>${student.mother_name}</td>
   <td>${student.age}</td>
   <td>${student.blood_group}</td>
   </tr>  
   </c:forEach>  
</table> --%>
</body>
</html>