<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="teacher_acces_student.jsp" />
<form action="medical_view">
</br>
<div class="form-group col-md-12">
					    <label for="regno">registration number</label>
					    <input type="number" class="form-control" maxlength="10" name="regno" placeholder="Enter regno">
					   	
					  </div>
<div align="center" class="form-group">
						  		<input type="submit" value="VIEW RECORD" class="btn btn-primary">
						  </div>
</form>
<h1>Medical record</h1>  
<table class="table table-striped table-bordered table-hover">  
<tr><th>Name</th><th>blood_group</th><th>Abnormalities</th><th>immunization_dates</th><th>allergies</th><th>Edit</th><!-- <th>Delete</th> --></tr>  
   
   <c:forEach var="medical" items="${key5}">   
   <tr>  
   <td>${medical.name}</td> 
   <td>${medical.blood_group}</td>  
   <td>${medical.abnormalities}</td>  
   <td>${medical.immunization_dates}</td>  
   <td>${medical.allergies}</td> 
   <td><a href="editemp">Edit</a></td>  
   <!-- <td><a href="deleteemp">Delete</a></td>   -->
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   
</body>
</html>