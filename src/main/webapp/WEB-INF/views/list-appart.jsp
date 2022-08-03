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
<th>appId</th>
<th>ownerId</th>
<th>appLocations</th>
<th>appLength</th>
<th>appBreadth</th>
<th>appsquareFeet</th>
<th>appSurveyno</th>
<th>appPattano</th>
<th>appContact</th>
<th>appStatus</th>
<th>appPrice</th>
<th>appLift</th>
<th>appFloor</th>
<th>appAddress</th>
<th>dates</th>
</tr>
</thead>
<tbody>
<c:forEach var="app" items="${allapparts}"> 
<tr>
<td>${app.appId}</td>
<td>${app.ownerId}</td>
<td>${app.appLocations}</td>
<td>${app.appLength}</td>
<td>${app.appBreadth}</td>
<td>${app.appsquareFeet}</td>
<td>${app.appSurveyno}</td>
<td>${app.appPattano}</td>
<td>${app.appContact}</td>
<td>${app.appStatus}</td>
<td>${app.appPrice}</td>
<td>${app.appLift}</td>
<td>${app.appFloor}</td>
<td>${app.appAddress}</td>
<td>${app.dates}</td>

</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>