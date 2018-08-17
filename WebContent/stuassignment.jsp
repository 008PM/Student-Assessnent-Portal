<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="studentloginsuccess.jsp" />
<form action="download" method="post" enctype="multipart/form-data">
<!-- <div class="form-group col-md-12">
					    <label for="exampleInputEmail1">title</label>
					    <input type="text" class="form-control" name="reg" aria-describedby="emailHelp" placeholder="Enter title">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>-->

<div class="form-group col-md-12">
<label for="exampleInputEmail1">enter subject</label>
					    <input type="text" class="form-control" name="subject" size="50">
					   	 <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div> 
 
  <div align="center" class="form-group">
						  		<input type="submit" value="Download Assignment" class="btn btn-primary">
						  </div>

</form>

<!-- <a href="download">download</a> -->

${k1}
</body>
</html>