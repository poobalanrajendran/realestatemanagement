<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update users</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="updateuser" method="post" modelAttribute="updateuser">
<div>
       <label for="users_id">usersId</label>
       <div >
        <form:input path="users_id"  />
       </div>
      </div>
      <div>
       <label for="users_name">usersName</label>
       <div >
        <form:input path="users_name"  />
       </div>
      </div>
      <div>
       <label for="passwords">passwords</label>
       <div >
        <form:input path="passwords"  />
       </div>
      </div>
      <div>
       <label for="roles">roles</label>
       <div >
        <form:input path="roles"  />
       </div>
      </div>
      <div>
       <label for="email_id">emailid</label>
       <div >
        <form:input path="email_id"  />
       </div>
      </div>
      <div>
       <label for="address">address </label>
       <div >
        <form:input path="address"  />
       </div>
      </div>
      <div>
       <label for="phone_no">phoneno</label>
       <div >
        <form:input path="phone_no"  />
       </div>
      </div>
      <div>
       <label for="Dates">dates</label>
       <div >
        <form:input path="Dates"  />
       </div>
      </div>
      <div>
       <label for="gender">genders</label>
       <div >
        <form:input path="gender"  />
       </div>
      </div>
      <div>
<form:button>Add users</form:button>
</div>
</form:form>
</div>
</div>
</body>
</html>