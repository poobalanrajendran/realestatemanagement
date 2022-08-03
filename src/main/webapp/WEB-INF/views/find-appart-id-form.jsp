<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addappart</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="" method="post" modelAttribute="findappartid">
<div>
       <label for="appId">Appartment Id </label>
       <div >
        <form:input path="appId"/>
       </div>
      </div>
      <br>
      <div>
       <label for="ownerId">Owner Id</label>
       <div >
        <form:input path="ownerId"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appLocations">Appartment Locations</label>
       <div >
        <form:input path="appLocations"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appLength">Appartment Length </label>
       <div >
        <form:input path="appLength"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appBreadth">Appartment Breadth</label>
       <div >
        <form:input path="appBreadth"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appsquareFeet">Appartment squareFeet </label>
       <div >
        <form:input path="appsquareFeet"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appSurveyno">Appartment Surveyno</label>
       <div >
        <form:input path="appSurveyno"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appPattano">Appartment Pattano</label>
       <div >
        <form:input path="appPattano"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appContact">Appartment contact</label>
       <div >
        <form:input path="appContact"/>
       </div>
      </div>
      <br>
       <div>
               Appartment Status : <form:radiobutton path="appStatus" value="Sold" />Sold
                         <form:radiobutton path="appStatus" value="Not Sold" />Not Sold
                </div>
                <br>
       <div>
       <label for="appPrice">Appartment Price</label>
       <div >
        <form:input path="appPrice"/>
       </div>
      </div>
      <br>
       <div>
               Appartment Lift : <form:radiobutton path="appLift" value="Available" />Available
                         <form:radiobutton path="appLift" value="Not Available" />Not Available
                </div>
                <br>
      <div>
       <label for="appFloor">Appartment Floor</label>
       <div >
        <form:input path="appFloor"/>
       </div>
      </div>
      <br>
      <div>
       <label for="appAddress">Appartment Address </label>
       <div >
        <form:textarea path="appAddress" cols="50" rows="6" />
       </div>
      </div>
      <br>
      <div>
       <label for="Dates">dates</label>
       <div >
        <form:input type ="date" path="Dates"  />
       </div>
      </div>

</div>
</form:form>
</div>
</body>
</html>