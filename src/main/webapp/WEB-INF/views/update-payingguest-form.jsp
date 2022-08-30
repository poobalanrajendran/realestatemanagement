<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
<title>update PG</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="/guest/updateguest" method="post" modelAttribute="updateland">
<div>
       <label for="pgId">Paying Guest Id</label>
       <div >
        <form:input type="number" path="pgId" required="true" title="Enter the integer only"/>
       </div>
      </div>
      <br>
      <%-- <div>
       <label for="rent">Rent cost</label>
       <div >
        <form:input path="rent" required ="true" title="Enter the integer only"/>
       </div>
      </div> --%>
      <br>
       <div>
                PG Type : <form:radiobutton path="pgType" value="Mens Hostel" />Mens Hostel
                         <form:radiobutton path="pgType" value="WomenMens Hostel" /> WomenMens Hostel
                </div>
     
      <br>
   
      
      <div>
                PG foodFacility : <form:radiobutton path="foodFacility" value="Not Availabel" />Not Availabel
                         <form:radiobutton path="foodFacility" value="Availabel" /> Availabel
                </div>
     
      <br>
       
      <div>
              PG A/C Non A/C : <form:radiobutton path="acNonac" value="A/C" />A/C
                         <form:radiobutton path="acNonac" value="Non A/C" />Non A/C
                </div>
                <br>
     
      <div>
       <label for="advance">PG advance </label>
       <div >
        <form:input type="number" path="advance" required ="true" title="Enter the integer only" />
       </div>
      </div>
      <br>
     <div>
              Lift : <form:radiobutton path="lift" value="Available" required ="true"/>Available
                         <form:radiobutton path="lift" value="Not Available" required ="true"/>Not Available
                </div>
      <br>
      
       <label for="floor">Floor</label>
       <div >
        <form:input path ="floor" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required ="true"/>
       </div>
    
  <br>
       
      
<form:button>update</form:button>

</form:form>
</div>
  </div>
</body>
</html>