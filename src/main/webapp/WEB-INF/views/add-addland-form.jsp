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
       <label for="land_id">landId</label>
       <div >
        <form:input path="land_id"/>
       </div>
      </div>
      <div>
       <label for="owner_id">ownerid</label>
       <div >
        <form:input path="owner_id"/>
       </div>
      </div>
      <div>
       <label for="land_type">land_type</label>
       <div >
        <form:input path="land_type"/>
       </div>
      </div>
      <div>
       <label for="land_length">land_length </label>
       <div >
        <form:input path="land_length"/>
       </div>
      </div>
      <div>
       <label for="land_breadth">land_breadth</label>
       <div >
        <form:input path="land_breadth"/>
       </div>
      </div>
      <div>
       <label for="land_squarefeet">land_squarefeet </label>
       <div >
        <form:input path="land_squarefeet"/>
       </div>
      </div>
      <div>
       <label for="land_surveyno">land_surveyno</label>
       <div >
        <form:input path="land_surveyno"/>
       </div>
      </div>
      <div>
       <label for="land_pattano">land_pattano</label>
       <div >
        <form:input path="land_pattano"/>
       </div>
      </div>
      <div>
       <label for="contact_number"> contact_number</label>
       <div >
        <form:input path="contact_number"/>
       </div>
      </div>
       <div>
       <label for="land_address">land_address </label>
       <div >
        <form:input path="land_address"/>
       </div>
      </div>
       <div>
       <label for="land_status">land_status</label>
       <div >
        <form:input path="land_status"/>
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
       <label for="locations">dates</label>
       <div >
        <form:input path="locations"/>
       </div>
      </div>
<form:button>AddLand</form:button>
</div>
</form:form>
</div>
</body>
</html>