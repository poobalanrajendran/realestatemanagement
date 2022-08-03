<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<th>pgId</th>
<th>ownerId</th>
<th>pgLocation</th>
<th>pgPhoneno</th>
<th>pgAddress</th>
<th>pgRent</th>
<th>pgfoodFacility</th>
<th>pgacNonac</th>
<th>pgStatus</th>
<th>pgType</th>
<th>dates</th>
</tr>
</thead>
<tbody>
<c:forEach var="pg" items="${allpg}"> 
<tr>
<td>${pg.pgId}</td>
<td>${pg.ownerId}</td>
<td>${pg.pgLocation}</td>
<td>${pg.pgPhoneno}</td>
<td>${pg.pgAddress}</td>
<td>${pg.pgRent}</td>
<td>${pg.pgfoodFacility}</td>
<td>${pg.pgacNonac}</td>
<td>${pg.pgStatus}</td>
<td>${pg.pgType}</td>
<td>${pg.dates}</td>


</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>