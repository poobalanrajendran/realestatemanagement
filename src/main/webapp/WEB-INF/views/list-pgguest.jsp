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
<th>rent</th>
<th>foodFacility</th>
<th>acNonac</th>
<th>advance</th>
<th>lift</th>
<th>floor</th>
<th>pgType</th>
</tr>
</thead>
<tbody>
<c:forEach var="pg" items="${allpg}"> 
<tr>
<td>${pg.pgId}</td>
<td>${pg.rent}</td>
<td>${pg.foodFacility}</td>
<td>${pg.acNonac}</td>
<td>${pg.advance}</td>
<td>${pg.lift}</td>
<td>${pg.floor}</td>
<td>${pg.pgType}</td>



</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>