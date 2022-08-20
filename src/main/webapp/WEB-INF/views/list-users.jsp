<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
<div id="table root">
<table>
<thead>
<tr>
<th>usersId</th>
<th>usersName</th>
<th>passwords</th>
<th>roles</th>
<th>gender</th>
<th>emailId</th>
<th>address</th>
<th>phoneno</th>
<th>dates</th>
</tr>
</thead>
<tbody>
<c:forEach var="use" items="${allusers}"> 
<tr>
<td>${use.usersId}</td>
<td>${use.usersName}</td>
<td>${use.passwords}</td>
<td>${use.roles}</td>
<td>${use.gender}</td>
<td>${use.emailId}</td>
<td>${use.address}</td>
<td>${use.phoneno}</td>
<td>${use.dates}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>