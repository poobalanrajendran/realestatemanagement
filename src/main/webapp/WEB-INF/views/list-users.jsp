<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
<div id="table root">
<table>
<thead>
<tr>
<th>users_id</th>
<th>users_name</th>
<th>passwords</th>
<th>roles</th>
<th>gender</th>
<th>email_id</th>
<th>address</th>
<th>phone_no</th>
<th>dates</th>
</tr>
</thead>
<tbody>
<c:forEach var="use" items="${allusers}"> 
<tr>
<td>${use.users_id}</td>
<td>${use.users_name}</td>
<td>${use.passwords}</td>
<td>${use.roles}</td>
<td>${use.gender}</td>
<td>${use.email_id}</td>
<td>${use.address}</td>
<td>${use.phone_no}</td>
<td>${use.dates}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>