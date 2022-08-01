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
<th>land_id</th>
<th>owner_id</th>
<th>locations</th>
<th>land_length</th>
<th>land_breadth</th>
<th>land_squarefeet</th>
<th>land_surveyno</th>
<th>land_pattano</th>
<th>land_type</th>
<th>contact_number</th>
<th>land_address</th>
<th>land_status</th>
<th>price</th>
<th>dates</th>
</tr>
</thead>
<tbody>
<c:forEach var="lan" items="${alllands}"> 
<tr>
<td>${lan.land_id}</td>
<td>${lan.owner_id}</td>
<td>${lan.locations}</td>
<td>${lan.land_length}</td>
<td>${lan.land_breadth}</td>
<td>${lan.land_squarefeet}</td>
<td>${lan.land_surveyno}</td>
<td>${lan.land_pattano}</td>
<td>${lan.land_type}</td>
<td>${lan.contact_number}</td>
<td>${lan.land_address}</td>
<td>${lan.land_status}</td>
<td>${lan.price}</td>
<td>${lan.dates}</td>

</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>