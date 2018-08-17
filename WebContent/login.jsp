
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="css/main.css">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<br>
<jsp:include page="header.jsp" /> 
<br>

<hr>

<div class="container">

	<div class="row">
	
<!--  -Start- Left Side Login Bar - For Users  -->
		
		<div>
		
			<center>
				
				<div class="login_border">
					
					<h3>Login</h3><br>
					
					<form action="login" method="post">
						  <div class="form-group">
							    <label for="login_id">Enter userId</label>
							    <input type="text" class="form-control" name="formInputid" placeholder="Enter Your Id">
						  </div>
						  <div class="form-group">
							    <label for="login_password">Enter Your Password</label>
							    <input type="password" class="form-control" name="formInputpass" placeholder="Enter Your Password">
						  </div>
						  <div class="form-group">
						  		<input type="submit" value="LogIn" class="btn btn-primary btn-lg btn-block">
						  </div>
					</form>
				</div>
				
		
			
			</center>
		
		</div>
		
<!-- -End- Left Side Login Bar - For Users  -->	



<!-- -Start- Right Side Login Bar - For PG Provider  -->	
		
		<!-- <div class="col-md-6">
		
			<center>
				
				<div class="login_border">
					
					<h3>Staff Login</h3><br>
					
					<form action="teacherlogin">
						  <div class="form-group">
							    <label for="login_id">Enter Staff Id</label>
							    <input type="text" class="form-control" name="formInputid" placeholder="Enter Your Id">
						  </div>
						  <div class="form-group">
							    <label for="login_password">Enter Your Password</label>
							    <input type="password" class="form-control" name="formInputpass" placeholder="Enter Your Password">
						  </div>
						  <div class="form-group">
						  		<input type="submit" value="LogIn" class="btn btn-primary btn-lg btn-block">
						  </div>
					</form>
				</div>
				
			</center>
		
		</div>
 -->
${key1}
	
	</div>

</div>
<hr>
<center>
	<a href="studentregistration.jsp"><h3 class="display-4"> Click Here To Register YourSelf</h3></a>
</center>
<hr>

<jsp:include page="footer.jsp" /> 
</body>
</html>