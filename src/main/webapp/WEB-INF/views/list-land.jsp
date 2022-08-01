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
<th>landId</th>
<th>ownerId</th>
<th>locations</th>
<th>landLength</th>
<th>landBreadth</th>
<th>landSquarefeet</th>
<th>landSurveyno</th>
<th>landPattano</th>
<th>landType</th>
<th>contactNumber</th>
<th>landAddress</th>
<th>landStatus</th>
<th>price</th>
<th>dates</th>
</tr>
</thead>
<tbody>
<c:forEach var="lan" items="${alllands}"> 
<tr>
<td>${lan.landId}</td>
<td>${lan.ownerId}</td>
<td>${lan.locations}</td>
<td>${lan.landLength}</td>
<td>${lan.landBreadth}</td>
<td>${lan.landSquarefeet}</td>
<td>${lan.landSurveyno}</td>
<td>${lan.landPattano}</td>
<td>${lan.landType}</td>
<td>${lan.contactNumber}</td>
<td>${lan.landAddress}</td>
<td>${lan.landStatus}</td>
<td>${lan.price}</td>
<td>${lan.dates}</td>

</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>