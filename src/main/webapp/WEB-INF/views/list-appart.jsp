<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<th>appartmentId</th>
<th>security</th>
<th>floor</th>
<th>lift</th>

</tr>
</thead>
<tbody>
<c:forEach var="app" items="${allapparts}"> 
<tr>
<td>${app.appartmentId}</td>
<td>${app.security}</td>
<td>${app.floor}</td>
<td>${app.lift}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>