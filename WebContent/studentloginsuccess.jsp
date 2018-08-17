<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body><%-- 
<jsp:include page="header.jsp" />  --%>
 <nav class="navbar navbar-default">
  <div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="dashboard.jsp">Dashboard</a></li>
	      <li><form action="getdetails">
	     <button type="submit" style="background: none;border: none;padding-top: 16px"> Personal Details</button>
  				</form>
  				</li>
	      <li><a href="stuassignment.jsp">Assignments</a></li>
	      <li><a href="#">Courses</a></li>
	      <li><a href="#">Messeges</a></li>
	      <li><a href="#">others</a></li>
	      </ul>
  </div>
    <div style="float:right">
	    <ul class="nav navbar-nav">
	      <%-- <li><a href="#">Logged in as ${key}</a></li> --%>
	      <li><form action="logout" method="post">
	     <button id="logout-btn" type=submit style="border: none;background: none;color: #777;margin-top: 14px;">Logout</button> </form></li>
	    </ul>
	    
    
    
	   
    </div>
</nav>
<!-- <ul>

<li><form action="logout" method="post">
	     <button id="logout-btn" type=submit style="border: none;background: none;color: #777;margin-top: 14px;">Logout</button> </form></li>
	     </ul> -->
</body>
</html>