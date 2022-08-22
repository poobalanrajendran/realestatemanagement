<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
 <%@include file="css/alluser.css"%>
    
    </style>
</head>
<body>
<br>
<h1>AllUser</h1>
<div id="table root">
<table class="table"><caption></caption>
<thead>
<tr>
<th scope="col">usersId</th>
<th scope="col">usersName</th>
<th scope="col">passwords</th>
<th scope="col">roles</th>
<th scope="col">gender</th>
<th scope="col">emailId</th>
<th scope="col">address</th>
<th scope="col">phoneno</th>
<th scope="col">dates</th>
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