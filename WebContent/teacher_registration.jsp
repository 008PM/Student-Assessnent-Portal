<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/main.css">
<title>Teacher Registration</title>
</head>
<body>
<jsp:include page="adminsuccess.jsp" />
		<div align="center" class="col-md-6" >  
			
				<h3>Teacher Registration</h3><br>
							
				<form action="registration1">
				<div class="form-group">
					    <label for="exampleInputEmail1">Registration Number</label>
					    <input type="text" class="form-control" name="regno" aria-describedby="emailHelp" placeholder="Enter reg no.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
				
					  <div class="form-group">
					    <label for="exampleInputEmail1">Name</label>
					    <input type="text" class="form-control" name="name" aria-describedby="emailHelp" placeholder="Enter Name">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Password</label>
					    <input type="password" class="form-control" name="password" maxlength="10" aria-describedby="emailHelp" placeholder="Enter Password">
					   
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Username</label>
					      <input type="text" class="form-control" maxlength="10" name="username" aria-describedby="emailHelp" placeholder="Enter Username">
					    <!-- <textarea class="form-control" rows="3" cols="3" name="class"></textarea> -->
					  </div>
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Mobile</label>
					    <input type="number" class="form-control" maxlength="100" name="phone" aria-describedby="emailHelp" placeholder="Enter Mobile No.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Email</label>
					    <input type="email" class="form-control" maxlength="100" name="mail" aria-describedby="emailHelp" placeholder="Enter Email">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Address</label>
					    <textarea class="form-control" rows="3" cols="3" name="address"></textarea>				  
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter specialization</label>
					    <input type="text" class="form-control" maxlength="100" name="specialization" aria-describedby="emailHelp" placeholder="Enter specialization">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>

					    <div class="form-group">
					    <label for="exampleInputEmail1">Enter Age</label>
					    <input type="number" class="form-control" maxlength="10" name="age" aria-describedby="emailHelp" placeholder="Enter Age">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Blood group</label>
					    <input type="text" class="form-control" maxlength="10" name="group1" aria-describedby="emailHelp" placeholder="Enter Blood group.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  
					   <div class="form-group">
						  		<input type="submit" value="Register" class="btn btn-primary btn-lg btn-block">
						  </div>
					  
		
				</form>
			<div class="alert alert-success" role="alert">
${key1}
</div>	
			</div>
		
	
</body>
</html>