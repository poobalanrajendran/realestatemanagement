<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<style type="text/css">
tr:hover {background-color: #ECF32D;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(140, 67, 212, 0.4);
}
th:nth-child(even),td:nth-child(even) {
  background-color: rgba(300, 120, 130, 0.4);
}
</style>
</head>
<body>
	<div id="table root">
		<table border="1"><caption></caption>
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">image</th>
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
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lan" items="${alllands}">
					
						<td>${lan.id}</td>
						
						<td>${lan.usersId}</td>
						<td><img
                            src="file://C:/Users/poob3127/eclipse-workspace/realestatemanagement/src/main/resources/Images/${lan.image}"
                            alt="image" width="100" height="100"></td>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>