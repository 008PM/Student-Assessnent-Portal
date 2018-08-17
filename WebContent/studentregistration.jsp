

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
<title>Student Registration</title>
</head>
<body>

<br>
<jsp:include page="header.jsp" /> 
<br>

<!-- ===========================================================================================================  -->
		
<!--  Buttons to Get Type of Users  -->	
		<div style="text-align:center" class="type_btn_reg_page">
			<h3 >Register </h3>
			<button type="button" class="btn btn-success" id="btn_pg_toggle">Student Registration</button>
			<!-- <button type="button" class="btn btn-success" id="btn_user_toggle">Staff Registration</button> -->
		</div>
<!-- ===========================================================================================================  -->
		
	
	<div class="full_page_center">

		<div class="container">
	
			<div class="row">
		

<!-- ===========================================================================================================  -->



	<div align="center" class="div1_pg_hide"> <!-- JQuery class to hide  -->
			
			<div class="col-md-6" >  
			
				<h3>Student Registration</h3><br>
							
				<form action="registration">
				
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Name</label>
					    <input type="text" class="form-control" name="name" aria-describedby="emailHelp" placeholder="Enter Your Name">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter a username</label>
					    <input type="text" class="form-control" name="username" aria-describedby="emailHelp" placeholder="Enter Your user Name">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter a Registration number</label>
					    <input type="text" class="form-control" name="regno" aria-describedby="emailHelp" placeholder="Enter Your Registration Number">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Password</label>
					    <input type="password" class="form-control" name="password" maxlength="10" aria-describedby="emailHelp" placeholder="Enter Your Password">
					   
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Class</label>
					      <input type="text" class="form-control" maxlength="10" name="class1" aria-describedby="emailHelp" placeholder="Enter Your Class">
					    <!-- <textarea class="form-control" rows="3" cols="3" name="class"></textarea> -->
					  </div>
					  
					 <!--  <div class="form-group">
					    <label for="exampleInputEmail1">Image Upload(Front)</label>
					    <input type="image" class="form-control" name="image" aria-describedby="emailHelp" placeholder="Browse Your Image Path">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div> -->
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Mobile</label>
					    <input type="number" class="form-control" maxlength="100" name="phone" aria-describedby="emailHelp" placeholder="Enter Your Mobile No.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Parents Email</label>
					    <input type="email" class="form-control" maxlength="100" name="mail" aria-describedby="emailHelp" placeholder="Enter Your Email">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Address</label>
					    <textarea class="form-control" rows="3" cols="3" name="address"></textarea>				  
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Father's name</label>
					    <input type="text" class="form-control" maxlength="100" name="fname" aria-describedby="emailHelp" placeholder="Enter Your Father name">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Mother's name</label>
					   	<input type="text" class="form-control"  name="mname" aria-describedby="emailHelp" placeholder="Enter Your Mother name">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					    <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Age</label>
					    <input type="number" class="form-control" maxlength="10" name="age" aria-describedby="emailHelp" placeholder="Enter Your Age">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Blood group</label>
					    <input type="text" class="form-control" maxlength="10" name="group1" aria-describedby="emailHelp" placeholder="Enter Your Blood group.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  
					   <div class="form-group">
						  		<input type="submit" value="RegisterYourSelf" class="btn btn-primary btn-lg btn-block">
						  </div>
					  
		
				</form>
			
			</div> <!-- col-md-8 wala div  -->
		
			
	</div>		

<!-- ===========================================================================================================  -->		
	
<!-- Right Side div for USER REGISTRATION  -->	
	<!-- <div class="div2_user_hide"> JQuery class to hide 
	

		<h3>Registration For USERS</h3><br>
		
			<div class="col-md-6">  
							
				<form action="form_reg_user" method="post">
				
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Name</label>
					    <input type="text" class="form-control" name="reg_user_name" aria-describedby="emailHelp" placeholder="Enter Your Name">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Email</label>
					    <input type="tel" class="form-control" name="reg_user_email"  aria-describedby="emailHelp" placeholder="Enter Your Email">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Mobile</label>
					    <input type="tel" class="form-control" name="reg_user_mobile" maxlength="10" aria-describedby="emailHelp" placeholder="Enter Your Mobile No.">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Password</label>
					    <input type="password" class="form-control" name="reg_user_pass" aria-describedby="emailHelp" placeholder="Enter Your Password">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Password Again</label>
					    <input type="password" class="form-control" name="reg_user_pass_agn" aria-describedby="emailHelp" placeholder="Enter Your Password Again">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Adhar No.</label>
					    <input type="text" class="form-control" name="reg_user_adhar" aria-describedby="emailHelp" placeholder="Enter Your Adhar Card No.">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					  
					   <div class="form-group">
						  		<input type="submit" value="RegisterYourSelf" class="btn btn-primary btn-lg btn-block">
						  </div>
					  
		
				</form>
			
			</div> --> <!-- col-md-8 wala div  -->
		
		</div>
	
	
<!-- ===========================================================================================================  -->	
	
	
	</div>  <!--  row end tag -->

</div> <!--  container end tag -->


</div>


<!--  JQuery Code -->

<script type="text/javascript">

$(function(){
		$(".div1_pg_hide").hide(500); // using class name hide div 1
		$(".div2_user_hide").hide(500); // using class name hide div 2
	})
	
	
	$(document).ready(function(){

	$("#btn_user_toggle").click(function(){
		$(".div2_user_hide").show(); // using class name show div 1
		$(".div1_pg_hide").hide(); // using class name hide div 2
	})

	$("#btn_pg_toggle").click(function(){
		$(".div2_user_hide").hide(); // using class name hide div 1
		$(".div1_pg_hide").show(); // using class name show div 2
	})

})



</script>

<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp" /> 
	<br>
<!-- Footer -->

</body>
</html>