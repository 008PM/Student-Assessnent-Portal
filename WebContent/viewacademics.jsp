<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <title>Academic Scores </title>
      <script type = "text/javascript" src = "https://www.gstatic.com/charts/loader.js">
      </script>
      <script type = "text/javascript">
         google.charts.load('current', {packages: ['corechart']});     
      </script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="teacher_acces_student.jsp" />
<div>
<form action="acad_view">
</br>
<div class="form-group col-md-12">
					    <label for="regno">registration number</label>
					    <input type="number" class="form-control" maxlength="10" name="regno" placeholder="Enter regno">
					   	
					  </div>
<div align="center" class="form-group">
						  		<input type="submit" value="VIEW RECORD" class="btn btn-primary">
						  </div>
</form>
<h1>Academic record</h1>  
<table class="table table-striped table-bordered table-hover">  
<tr><th>Name</th><th>maths</th><th>english</th><th>hindi</th><th>science</th><th>social-science</th><th>computer-science</th><th>Edit</th></tr>  
   
   <c:forEach var="academics" items="${key3}">   
   <tr>  
    <td>${academics.name}</td>  
   <td>${academics.maths}</td>  
   <td>${academics.english}</td>  
   <td>${academics.hindi}</td>  
   <td>${academics.science}</td> 
   <td>${academics.social_science}</td>  
   <td>${academics.computer_science}</td>
   
   <td><a href="Editmarks.jsp">Edit</a></td>  
   <!-- <td><a href="deleteemp">Delete</a></td>   -->
   </tr> 
 
   </c:forEach>  
   </table>  

   <div id = "container" style = "width: 1000px; height: 400px; margin: 0 auto">
      </div>
   <c:forEach var="academics" items="${key3}"> 

   <span id="maths" > ${academics.maths}</span>
   <span id="english">${academics.english}</span>
   <span id="hindi">${academics.hindi}</span>
   <span id="science">${academics.science}</span>
   <span id="social">${academics.social_science}</span>
   <span id="computer">${academics.computer_science}</span>
   
 </c:forEach> 
</div>      

  
  
  

<!--    int num1=58; -->

    
      <script language = "JavaScript">
         function drawChart() {
            // Define the chart to be drawn.
        var hindi=document.getElementById("hindi").innerHTML;
        var maths=document.getElementById("maths").innerHTML;
        var english=document.getElementById("english").innerHTML;
        var science=document.getElementById("science").innerHTML;
        var social=document.getElementById("social").innerHTML;
        var computer=document.getElementById("computer").innerHTML;
        /*  alert(hindi) */ 
        var english
        var science
          var data = google.visualization.arrayToDataTable([
               ['Subject', 'Marks'],
               ['Maths',  45],
               ['English', english],
               ['Science',  science],
               ['Social-science', social],
               ['Hindi', hindi]
            ]);

            var options = {title: 'Student Marks'}; 

            // Instantiate and draw the chart.
            var chart = new google.visualization.BarChart(document.getElementById('container'));
            chart.draw(data, options);
         }
         google.charts.setOnLoadCallback(drawChart);
      </script>

</body>
</html>