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
<th>app_id</th>
<th>owner_id</th>
<th>app_locations</th>
<th>app_length</th>
<th>app_breadth</th>
<th>app_squarefeet</th>
<th>app_surveyno</th>
<th>app_pattano</th>
<th>appcontact</th>
<th>app_price</th>
<th>app_lift</th>
<th>app_floor</th>
<th>app_status</th>
<th>app_address</th>
<th>dates</th>
</tr>
</thead>
<tbody>
<c:forEach var="app" items="${allapparts}"> 
<tr>
<td>${app.app_id}</td>
<td>${app.owner_id}</td>
<td>${app.app_locations}</td>
<td>${app.app_length}</td>
<td>${app.app_breadth}</td>
<td>${app.app_squarefeet}</td>
<td>${app.app_surveyno}</td>
<td>${app.app_pattano}</td>
<td>${app.appcontact}</td>
<td>${app.app_status}</td>
<td>${app.app_price}</td>
<td>${app.app_lift}</td>
<td>${app.app_floor}</td>
<td>${app.app_address}</td>
<td>${app.dates}</td>

</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>