<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="" method="get" modelAttribute="findlandid">
<div>
       <label for="land_id">landId</label>
       <div >
        <form:input path="land_id" readonly="true" />
       </div>
      </div>
      <div>
       <label for="owner_id">owner_id</label>
       <div >
        <form:input path="owner_id" readonly="true" />
       </div>
      </div>
      <div>
       <label for="locations">locations</label>
       <div >
        <form:input path="locations" readonly="true" />
       </div>
      </div>
      <div>
       <label for="land_length">roles</label>
       <div >
        <form:input path="land_length" readonly="true"  />
       </div>
      </div>
      <div>
       <label for="land_breadth">land_breadth</label>
       <div >
        <form:input path="land_breadth" readonly="true" />
       </div>
      </div>
      <div>
       <label for="land_squarefeet">land_squarefeet </label>
       <div >
        <form:input path="land_squarefeet" readonly="true" />
       </div>
      </div>
      <div>
       <label for="land_surveyno">land_surveyno</label>
       <div >
        <form:input path="land_surveyno" readonly="true"  />
       </div>
      </div>
      <div>
       <label for="land_pattano">land_pattano</label>
       <div >
        <form:input path="land_pattano" readonly="true" />
       </div>
      </div>
      <div>
       <label for="land_type">land_type</label>
       <div >
        <form:input path="land_type" readonly="true" />
       </div>
      </div>
      <div>
       <label for="contact_number">contact_number</label>
       <div >
        <form:input path="contact_number" readonly="true" />
       </div>
      </div>
      <div>
       <label for="land_address">land_address</label>
       <div >
        <form:input path="land_address" readonly="true" />
       </div>
      </div>
      <div>
       <label for="land_type">land_type</label>
       <div >
        <form:input path="land_type" readonly="true" />
       </div>
      </div>
      <div>
       <label for="land_status">land_status</label>
       <div >
        <form:input path="land_status" readonly="true" />
       </div>
      </div>
      <div>
       <label for="price">price</label>
       <div >
        <form:input path="price" readonly="true" />
       </div>
      </div>
      <div>
       <label for="dates">dates</label>
       <div >
        <form:input path="dates" readonly="true" />
       </div>
      </div>
      
<form:button>find</form:button>
</div>
</form:form>
</div>
</body>
</html>