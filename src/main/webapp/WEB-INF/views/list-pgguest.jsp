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
<table><caption></caption>
<thead>
<tr>
<th scope="col">pgId</th>
<!-- <th scope="col">rent</th> -->
<th scope="col">foodFacility</th>
<th scope="col">acNonac</th>
<th scope="col">advance</th>
<th scope="col">lift</th>
<th scope="col">floor</th>
<th scope="col">pgType</th>
</tr>
</thead>
<tbody>
<c:forEach var="pg" items="${allpg}"> 
<tr>
<td>${pg.pgId}</td>
<%-- <td>${pg.rent}</td> --%>
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