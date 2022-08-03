<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addland</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="updateland" method="post" modelAttribute="updateland">
<div>
       <label for="landId">landId</label>
       <div >
        <form:input path="landId"/>
       </div>
      </div>
      <br>
      <div>
       <label for="ownerId">ownerid</label>
       <div >
        <form:input path="ownerId"/>
       </div>
      </div>
        <br>
      <div>
       <label for="locations">locations</label>
       <div >
        <form:input path="locations"/>
       </div>
      </div>
        <br>
      <div>
       <label for="landLength">landLength </label>
       <div >
        <form:input path="landLength"/>
       </div>
      </div>
        <br>
      <div>
       <label for="landBreadth">landBreadth</label>
       <div >
        <form:input path="landBreadth"/>
       </div>
      </div>
        <br>
      <div>
       <label for="landSquarefeet">landSquarefeet </label>
       <div >
        <form:input path="landSquarefeet"/>
       </div>
      </div>
        <br>
      <div>
       <label for="landSurveyno">landSurveyno</label>
       <div >
        <form:input path="landSurveyno"/>
       </div>
      </div>
        <br>
      <div>
       <label for="landPattano">landPattano</label>
       <div >
        <form:input path="landPattano"/>
       </div>
      </div>
        <br>
      <div>
       <label for="contactNumber"> contactNumber</label>
       <div >
        <form:input path="contactNumber"/>
       </div>
      </div>
        <br>
      <div>
       <label for="landType">landType </label>
       <div >
        <form:input path="landType"/>
       </div>
      </div>
        <br>
        <div>
       <label for="landAddress">address </label>
       <div >
        <form:textarea path="landAddress" cols="50" rows="6" />
       </div>
      </div>
      <br>
      <div>
               landStatus : <form:radiobutton path="landStatus" value="Sold" />Sold
                         <form:radiobutton path="landStatus" value="Not Sold" />Not Sold
                </div>
     
      <br>
       <div>
       <label for="price">price</label>
       <div >
        <form:input path="price"/>
       </div>
      </div>
        <br>
     <div>
       <label for="Dates">dates</label>
       <div >
        <form:input type ="date" path="Dates"  />
       </div>
      </div>
        <br>
      <div>
       
<form:button>update Land detalis</form:button>
</div>
</form:form>
</div>
</body>
</html>