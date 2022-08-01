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
<form:form action="addlands" method="post" modelAttribute="addland">
<div>
       <label for="landId">landId</label>
       <div >
        <form:input path="landId"/>
       </div>
      </div>
      <div>
       <label for="ownerId">ownerid</label>
       <div >
        <form:input path="ownerId"/>
       </div>
      </div>
      <div>
       <label for="locations">locations</label>
       <div >
        <form:input path="locations"/>
       </div>
      </div>
      <div>
       <label for="landLength">landLength </label>
       <div >
        <form:input path="landLength"/>
       </div>
      </div>
      <div>
       <label for="landBreadth">landBreadth</label>
       <div >
        <form:input path="landBreadth"/>
       </div>
      </div>
      <div>
       <label for="landSquarefeet">landSquarefeet </label>
       <div >
        <form:input path="landSquarefeet"/>
       </div>
      </div>
      <div>
       <label for="landSurveyno">landSurveyno</label>
       <div >
        <form:input path="landSurveyno"/>
       </div>
      </div>
      <div>
       <label for="landPattano">landPattano</label>
       <div >
        <form:input path="landPattano"/>
       </div>
      </div>
      <div>
       <label for="contactNumber"> contactNumber</label>
       <div >
        <form:input path="contactNumber"/>
       </div>
      </div>
      <div>
       <label for="landType">landType </label>
       <div >
        <form:input path="landType"/>
       </div>
      </div>
       <div>
       <label for="landAddress">landAddress </label>
       <div >
        <form:input path="landAddress"/>
       </div>
      </div>
       <div>
       <label for="landStatus">land_status</label>
       <div >
        <form:input path="landStatus"/>
       </div>
      </div>
       <div>
       <label for="price">price</label>
       <div >
        <form:input path="price"/>
       </div>
      </div>
      <div>
       <label for="dates">dates</label>
       <div >
        <form:input path="dates"/>
       </div>
      </div>
      <div>
       
<form:button>AddLand</form:button>
</div>
</form:form>
</div>
</body>
</html>