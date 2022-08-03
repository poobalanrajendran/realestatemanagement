<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
       <label for="ownerId">Owner Id</label>
       <div >
        <form:input path="ownerId"  />
       </div>
      </div>
      <br>
       <div>
                PG Type : <form:radiobutton path="pgType" value="Mens Hostel" />Mens Hostel
                         <form:radiobutton path="pgType" value="WomenMens Hostel" /> WomenMens Hostel
                </div>
     
      <br>
      <div>
       <label for="pgLocation">PG Location</label>
       <div >
        <form:input path="pgLocation"  />
       </div>
      </div>
      <br>
      <div>
                PG foodFacility : <form:radiobutton path="pgfoodFacility" value="Not Availabel" />Not Availabel
                         <form:radiobutton path="pgfoodFacility" value="Availabel" /> Availabel
                </div>
     
      <br>
       <label for="pgPhoneno">PG Phoneno</label>
       <div >
        <form:input path="pgPhoneno"  />
       </div>
      </div>
      <br>
      <div>
              PG A/C Non A/C : <form:radiobutton path="pgacNonac" value="A/C" />A/C
                         <form:radiobutton path="pgacNonac" value="Non A/C" />Non A/C
                </div>
                <br>
      <br>
      <div>
       <label for="pgAddress">PG Address </label>
       <div >
        <form:textarea path="pgAddress" cols="25" rows="3" />
       </div>
      </div>
      <br>
      <div>
       <label for="pgRent">PG Rent</label>
       <div >
        <form:input  path="pgRent"  />
       </div>
      </div>
      <br>
      <div>
                PG Status : <form:radiobutton path="pgStatus" value="Avialabel" />Avialabel
                         <form:radiobutton path="pgStatus" value="Not Avialabel" />Not Avialabel
                </div>
                <br>
      <div>
       <label for="Dates">dates</label>
       <div >
        <form:input type ="date" path="Dates"  />
       </div>
      </div>
  <br>
       
      

</div>
</form:form>
</div>
</body>
</html>