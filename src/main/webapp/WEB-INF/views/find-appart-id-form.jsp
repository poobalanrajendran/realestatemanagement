<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
<title>addappart</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="" method="post" modelAttribute="findappartid">
<div>
       <label for="appartmentId">Appartment Id </label>
       <div >
        <form:input path="appartmentId"/>
       </div>
      </div>
      <br>
      <div>
       <label for="security">Security</label>
       <div >
        <form:input path="security"/>
       </div>
      </div>
      <br>
      <div>
       <label for="floor">floor</label>
       <div >
        <form:input path="floor"/>
       </div>
      </div>
      <br>
      <div>
       <label for="lift">Appartment Length </label>
       <div >
        <form:input path="lift"/>
       </div>
      </div>
      <br>
      </div>
      <br>
      <div>

					<form:button>Add</form:button>
				</div>
</form:form>
</div>
</body>
</html>