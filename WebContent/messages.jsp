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
<jsp:include page="teacherloginsuccess.jsp" />
<h3>SEND MAIL TO PARENT</h3><br>
							
				<form action="sendmail">
				<div class="form-group col-md-12">
					    <label for="exampleInputEmail1">Enter parent email address</label>
					    <input type="text" class="form-control" name="mailadd" aria-describedby="emailHelp" placeholder="Enter email address.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  <div class="form-group col-md-12">
					    <label for="exampleInputEmail1">Write feedback of student </label>
					    <textarea class="form-control" rows="4" cols="4" name="sfeedback"></textarea>				  
					  </div>
					  
					   <div align="center" class="form-group">
						  		<input type="submit" value="Send E-mail" class="btn btn-primary">
						  </div>

<div class="alert alert-success" role="alert">
${key1}
</div>
</body>
</html>