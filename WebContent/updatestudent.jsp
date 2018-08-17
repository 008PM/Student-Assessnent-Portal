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
<div>
<h1 style="text-align:center"> UPDATE STUDENT DETAILS</h1>
	<form action="update_s">
	
				<div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" required>
    </div>
		
		<div class="form-group col-md-6">
      <label for="inputEmail4">Class</label>
      <input type="text" class="form-control" id="class1" name="class1" placeholder="Enter Class" required>
    </div>
					   <div class="form-group col-md-6">
      <label for="mobnumber">Mobile Number</label>
      <input type="number" class="form-control" maxlength="10" id="phone" name="phone" placeholder="Enter Mobile Number" required>
    </div>
					  
					  <div class="form-group col-md-6">
					    <label for="pemail">Parents Email</label>
					    <input type="email" class="form-control" maxlength="100" name="mail" placeholder="Enter Email" required>
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
	
					   <div class="form-group col-md-12">
					    <label for="address">Address</label>
					    <textarea class="form-control" rows="3" cols="3" name="address" required></textarea>				  
					  </div> 
					   <div class="form-group col-md-2">
					    <label for="age">Age</label>
					    <input type="number" class="form-control" maxlength="10" name="age" placeholder="Enter Age" required>
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  <div class="form-group col-md-10">
					    <label for="regno">registration number</label>
					    <input type="number" class="form-control" maxlength="10" name="regno" placeholder="Enter regno" required>
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  <div align="center" class="form-group">
						  		<input type="submit" value="UPDATE RECORD" class="btn btn-primary">
						  </div>
					  
</form>
</div>
<div class="alert alert-success" role="alert">
${key1}
</div>

</body>
</html>