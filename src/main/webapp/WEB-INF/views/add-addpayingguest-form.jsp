<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>add PG</title>
<style>

<%@include file="css/payingGuest.css"%>
</style>
</head>
<script>
function display()
{
	alert("PayingGuest is Added sucessfully");
	}

</script>
<body>
<div class="container">

<form:form action="addpguest" method="post" modelAttribute="addpg">
<h1>Paying Guest</h1>
<div class="row">
                <div class="col-25">
       <label for="pgId">Paying Guest Id</label>
       </div>
       <div class="col-75">
        <form:input path="pgId" required="true" title="Enter the integer only" pattern="[0-9]{4}"/>
       </div>
      </div>
      <br>
     <div class="row">
                <div class="col-25">
       <label for="rent">Rent cost</label>
       </div>
       <div class="col-75">
        <form:input path="rent" required ="true" pattern="[0-9]{4}" title="Enter the integer only"/>
       </div>
      </div>
      <br>
       <div class="row">
                PG Type : <form:radiobutton path="pgType" value="Mens Hostel" required ="true"/>Mens Hostel
                         <form:radiobutton path="pgType" value="WomenMens Hostel" required ="true"/> WomenMens Hostel
                </div>
     
      <br>
   
      
     <div class="row">
                PG foodFacility : <form:radiobutton path="foodFacility" value="Not Available" required ="true" />Not Availabel
                         <form:radiobutton path="foodFacility" value="Available" required ="true"/> Availabel
                </div>
     
      <br>
       
      <div class="row">
              PG A/C Non A/C : <form:radiobutton path="acNonac" value="A/C" required ="true"/>A/C
                         <form:radiobutton path="acNonac" value="Non A/C" required ="true" />Non A/C
                </div>
                <br>
     
      <div class="row">
                <div class="col-25">
       <label for="advance">PG advance </label>
       </div>
       <div class="col-75">
        <form:input path="advance" required ="true" pattern="[0-9]{4}" title="Enter the integer only"/>
       </div>
      </div>
      <br>
     
       <div class="row">
              Lift : <form:radiobutton path="lift" value="Available" required ="true"/>Available
                         <form:radiobutton path="lift" value="Not Available" required ="true"/>Not Available
                </div>
      
      <br>
      <div class="row">
                <div class="col-25">
       <label for="floor">Floor</label>
       </div>
       <div class="col-75">
        <form:input path ="floor" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required ="true"/>
       </div>
       </div>
       <br>
       <div>
       <form:button class ="btn" onclick="display()">Add</form:button>
       </div>
       </form:form>
      </div>
  
       
      


</body>
</html>