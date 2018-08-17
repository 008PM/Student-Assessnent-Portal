<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<script type="text/javascript">
	function checkTotal() {
		//alert("hi");
		document.listForm.total.value = '';
		var sum = 0;
		for (i=0;i<document.listForm.check2.length;i++) {
		  if (document.listForm.check2[i].checked) {
		  	sum = sum + parseInt(document.listForm.check2[i].value);
		  }
		}
		document.listForm.total.value = sum;
		
	}
	function checkTotal1() {
		document.listForm.dishes.value= '';
		//var abc=document.listForm.quantity.value;
		//alert(abc);
		var sum=" ";
		var s=",";
		for(i=0;i<document.listForm.check3.length;i++)
			{
			if(document.listForm.check2[i].checked)
				{
				sum=sum+s+document.listForm.check3[i].value;
				}
			}
		document.listForm.dishes.value = sum;
	}
</script>


Menu list:
<form name="listForm" action="total">
<table border="1" width="50%" align="center">
<!--  <th>Name of restaurant</th>-->
<th>Item name</th>
<th>Price</th>
<th>Cuisine type</th>
<th>Select</th>
<th>Sure</th>
<c:forEach var="i" items="${list}">
<tr align="center">
<input type="hidden" name="nameofresto" value="${i.nameofresto}">
<!--  <td><c:out value="${i.nameofresto}"></c:out></td>-->  
<td><c:out value="${i.itemname}"></c:out></td>
<td><c:out value="${i.price}"></c:out></td>
<td><c:out value="${i.cuisine_type}"></c:out></td>
<td><input type="checkbox" name="check2" value="${i.price}" onchange="checkTotal()"></td>
<td><input type="checkbox" name="check3" value="${i.itemname}" onchange="checkTotal1()"></td>

</c:forEach>
<td>Total: <input type="text" size="2" name="total" value=""/></td>
<td>ItemsOrdered: <input type="text" size="10" name="dishes" value=""/></td>
<td>Username(required):<input type="text" size="10" name="username" value=""/></td>
<td><input type="submit" name="reserveButton" value="submit"></input></td>
</tr>
</table></form>
<!--<c:forEach var="i" items="${totallist}">
<c:out value="${i.price}">
</c:out></c:forEach>-->

