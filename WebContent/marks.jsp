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
<form action="marksinsert">
				<br>
					  <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Enter Registration number</label>
					    <input type="text" class="form-control" name="reg" aria-describedby="emailHelp" placeholder="Enter Registration Number">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Math</label>
					    <input type="text" class="form-control" name="math" aria-describedby="emailHelp" placeholder="Enter Maths marks">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">English</label>
					    <input type="text" class="form-control" name="eng" aria-describedby="emailHelp" placeholder="Enter English marks">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Hindi</label>
					    <input type="text" class="form-control" name="hin" aria-describedby="emailHelp" placeholder="Enter Hindi marks">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  
					   <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Science</label>
					    <input type="text" class="form-control" name="sci" aria-describedby="emailHelp" placeholder="Enter Science marks">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					 <div class="form-group col-md-6">
					    <label for="exampleInputEmail1">Social-Science</label>
					    <input type="text" class="form-control" name="sst" aria-describedby="emailHelp" placeholder="Enter Social-Science marks">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  <div class="form-group col-md-12">
					    <label for="exampleInputEmail1">Computer-Science</label>
					    <input type="text" class="form-control" name="cse" aria-describedby="emailHelp" placeholder="Enter Computer-Science marks">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					   
					   <div align="center" "form-group">
						  		<input type="submit" value="Submit Marks" class="btn btn-primary">
						  </div>
					  
		
				</form>
			
					  
		<div class="alert alert-success" role="alert">
${key2}
</div>			  
					  
</body>
</html>