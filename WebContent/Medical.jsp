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
<form action="medical">
				<br>
					  <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Enter Registration number</label>
					    <input type="text" class="form-control" name="reg" aria-describedby="emailHelp" placeholder="Enter Registration Number">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Enter Blood-Group</label>
					    <input type="text" class="form-control" name="bloodgrp" aria-describedby="emailHelp" placeholder="Enter Blood-group">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					   <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Enter Abnormality</label>
					    <input type="text" class="form-control" name="abnor" aria-describedby="emailHelp" placeholder="Enter abnormality">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Enter Immunization_Date</label>
					    <input type="text" class="form-control" name="imdate" aria-describedby="emailHelp" placeholder="Enter immunization_dates">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  <div class="form-group col-md-12">
					    <label for="exampleInputEmail1">Enter Allergies-Group</label>
					    <input type="text" class="form-control" name="allergy" aria-describedby="emailHelp" placeholder="Enter allergies">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  <div align="center" class="form-group">
						  		<input type="submit" value="Submit Medical-Record" class="btn btn-primary">
						  </div>
					  
		
				</form>
			<div class="alert alert-success" role="alert">
${key2}
</div>
					  
</body>
</html>