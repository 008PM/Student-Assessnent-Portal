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
<h2 style="text-align:center">ENTER STUDENT'S REGISTRATION NUMBER</h2>
<form action="sdelete" method="post">
 <div class="form-group col-md-12">
					    <label for="regno">registration number</label>
					    <input type="number" class="form-control" maxlength="10" name="reg" placeholder="Enter regno">
					   
					  </div>
					  <div align="center"  class="form-group ">
						  		<input type="submit" value="DELETE RECORD" class="btn btn-primary">
						  </div>


</form>
 <div class="alert alert-success" role="alert">
${key1}
</div>	
</div>
</body>
</html>