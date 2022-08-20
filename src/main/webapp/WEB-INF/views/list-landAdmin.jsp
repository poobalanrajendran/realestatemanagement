<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<div id="table root">
		<table border="1"><caption></caption>
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">ownerId</th>
					<th scope="col">location</th>
					<th scope="col">contactNumber</th>
					<th scope="col">address</th>
					<th scope="col">assetdate</th>
					<th scope="col">status</th>
					<th scope="col">price</th>
					<th scope="col">length</th>
					<th scope="col">breadth</th>
					<th scope="col">squareFeet</th>
					<th scope="col">surveyNumber</th>
					<th scope="col">pattaNumber</th>
					<th scope="col">approvedType</th>
					<th scope="col">facing</th>
					<th scope="col">assestType</th>
					<th scope="col">Asset</th>
					<th scope="col">user</th>
					<th scope="col">PG</th>
					<th scope="col">Appartment</th>
					<th scope="col">Payment</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lan" items="${allAsset}">
					
						<td>${lan.id}</td>
						<td>${lan.usersId}</td>
						<td>${lan.location}</td>
						<td>${lan.contactNumber}</td>
						<td>${lan.address}</td>
						<td>${lan.assetdate}</td>
						<td>${lan.status}</td>
						<td>${lan.price}</td>
						<td>${lan.length}</td>
						<td>${lan.breadth}</td>
						<td>${lan.squareFeet}</td>
						<td>${lan.surveyNumber}</td>
						<td>${lan.pattaNumber}</td>
						<td>${lan.approvedType}</td>
						<td>${lan.facing}</td>
						<td>${lan.assestType}</td>
						
<td><button onclick="window.location.href='/assest/deleteland?id=${lan.id}&assestType=${lan.assestType}'">delete</button></td>


</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>