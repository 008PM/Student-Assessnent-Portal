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
<jsp:include page="teacher_acces_student.jsp" />
<form action="sports_view">
</br>
<div class="form-group col-md-12">
					    <label for="regno">registration number</label>
					    <input type="number" class="form-control" maxlength="10" name="regno" placeholder="Enter regno">
					   	
					  </div>
<div align="center" class="form-group">
						  		<input type="submit" value="VIEW RECORD" class="btn btn-primary">
						  </div>
</form>
<h1>Sports record</h1>  
<table class="table table-striped table-bordered table-hover">  
<tr><th>Name</th><th>football</th><th>basketball</th><th>hockey</th><th>fitness_level</th><th>Edit</th><th>Delete</th></tr>  
   
   <c:forEach var="sports" items="${key4}">   
   <tr>  
   <td>${sports.name}</td> 
   <td>${sports.football}</td>  
   <td>${sports.basketball}</td>  
   <td>${sports.hockey}</td>  
   <td>${sports.fitness_level}</td> 
   <td><a href="editemp">Edit</a></td>  
   <td><a href="deleteemp">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   

</body>
</html>