<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="" method="get" modelAttribute="finduserid">
<div>
       <label for="usersId">users Id</label>
       <div >
        <form:input path="usersId"  />
       </div>
      </div>
      <br>
      <div>
       <label for="usersName">users Name</label>
       <div >
        <form:input path="usersName"  />
       </div>
      </div>
      <br>
      <div>
       <label for="passwords">passwords</label>
       <div >
        <form:input path="passwords"  />
       </div>
      </div>
      <br>
      
      <div>
     
       <label for="emailId">email Id</label>
       <div >
        <form:input path="emailId"  />
       </div>
      </div>
      <br>
      
      <div>
       <label for="phoneno">phoneno</label>
       <div >
        <form:input  path="phoneno"  />
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
                Role : <form:radiobutton path="gender" value="Male" />Male
                         <form:radiobutton path="gender" value="Female" />Female
                         <form:radiobutton path="gender" value="Others" />Others
                </div>
                <br>
                <div>
       <label for="address">address </label>
       <div >
        <form:textarea path="address" cols="50" rows="6" />
       </div>
      </div>
      <br>
      <div>
                Role : <form:radiobutton path="roles" value="User" />User
                         <form:radiobutton path="roles" value="Admin" />Admin
                </div>
                
      

</div>
</form:form>
</div>
</body>
</html>