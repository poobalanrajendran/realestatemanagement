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
<form:form action="addappart" method="post" modelAttribute="addapparts">
<div>
       <label for="app_id">app_id </label>
       <div >
        <form:input path="app_id"/>
       </div>
      </div>
      <div>
       <label for="owner_id">owner_id</label>
       <div >
        <form:input path="owner_id"/>
       </div>
      </div>
      <div>
       <label for="app_locations">app_locations</label>
       <div >
        <form:input path="app_locations"/>
       </div>
      </div>
      <div>
       <label for="app_length">app_length </label>
       <div >
        <form:input path="app_length"/>
       </div>
      </div>
      <div>
       <label for="app_breadth">land_breadth</label>
       <div >
        <form:input path="app_breadth"/>
       </div>
      </div>
      <div>
       <label for="app_squarefeet">app_squarefeet </label>
       <div >
        <form:input path="app_squarefeet"/>
       </div>
      </div>
      <div>
       <label for="app_surveyno">app_surveyno</label>
       <div >
        <form:input path="app_surveyno"/>
       </div>
      </div>
      <div>
       <label for="app_pattano">app_pattano</label>
       <div >
        <form:input path="app_pattano"/>
       </div>
      </div>
      <div>
       <label for="appcontact"> appcontact</label>
       <div >
        <form:input path="appcontact"/>
       </div>
      </div>
       <div>
       <label for="app_status">app_status </label>
       <div >
        <form:input path="app_status"/>
       </div>
      </div>
       <div>
       <label for="land_status">land_status</label>
       <div >
        <form:input path="land_status"/>
       </div>
      </div>
       <div>
       <label for="app_price">app_price</label>
       <div >
        <form:input path="app_price"/>
       </div>
      </div>
      <div>
       <label for="app_lift">app_lift</label>
       <div >
        <form:input path="app_lift"/>
       </div>
      </div>
      <div>
       <label for="app_floor">app_floor</label>
       <div >
        <form:input path="app_floor"/>
       </div>
      </div>
      <div>
       <label for="app_address">app_address</label>
       <div >
        <form:input path="app_address"/>
       </div>
      </div>
      <div>
       <label for="app_image">app_image</label>
       <div >
        <form:input path="app_image"/>
       </div>
      </div>
       <div>
       <label for="dates">dates</label>
       <div >
        <form:input path="dates"/>
       </div>
      </div>
<form:button>AddLand</form:button>
</div>
</form:form>
</div>
</body>
</html>