<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>find PG</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="" method="get" modelAttribute="findguestId">
<div>
       <label for="pgId">Paying Guest Id</label>
       <div >
        <form:input path="pgId"  />
       </div>
      </div>
      <br>
      <div>
       <label for="rent">Rent cost</label>
       <div >
        <form:input path="rent"  />
       </div>
      </div>
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
        <form:textarea path="advance" cols="25" rows="3" />
       </div>
      </div>
      <br>
      <div>
       <label for="lift">PG lift</label>
       <div >
        <form:input  path="lift"  />
       </div>
      </div>
      <br>
      
       <label for="floor">dates</label>
       <div >
        <form:input path ="floor"/>
       </div>
      </div>
  <br>
       
      

</div>
</form:form>
</div>
</body>
</html>