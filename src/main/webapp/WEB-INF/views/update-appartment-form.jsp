<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>addappart</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="updateappart" method="post" modelAttribute="updateland">
<div>
       <label for="appartmentId">Apartment Id </label>
       <div >
        <form:input type="number" path="appartmentId"/>
       </div>
      </div>
      <br>
      <div>
       <label for="security">Security</label>
       <div >
        <form:input
         path="security" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20$" required="true"/>
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
      <label for="lift">Apartment Lift </label>
					<div>
						<form:input path="lift" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20$" required="true"/>
       </div>
      </div>
      <br>
    
      <br>
      <div>

					<form:button>update</form:button>
				</div>
</form:form>
</div>
  </div>
</body>
</html>