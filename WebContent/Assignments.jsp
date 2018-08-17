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
<form action="upload" method="post" enctype="multipart/form-data">
<div class="form-group col-md-12">
					    <label for="exampleInputEmail1">title</label>
					    <input type="text" class="form-control" name="title" aria-describedby="emailHelp" placeholder="Enter title">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>

<div class="form-group col-md-12">
<label for="exampleInputEmail1">pdf file</label>
					    <input type="file" class="form-control" name="file" size="50">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
 
  <div align="center" class="form-group">
						  		<input type="submit" value="Submit" class="btn btn-primary">
						  </div>

</form>

<!-- <a href="download">download</a> -->

 <div class="alert alert-success" role="alert">
${k1}
</div>	
</body>
</html>