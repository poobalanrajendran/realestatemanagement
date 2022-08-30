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
 <%@include file="css/chennailocationtable.css"%>
</style>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>
<br>
<h1>Asset</h1>
<br>
	<div id="table root">
		<table id="alter" class="center"><caption></caption>
			<thead>
				<tr>
					<th scope="col">AssetId</th>
					
					<th scope="col">UserID</th>
					<th scope="col">Location</th>
					<th scope="col">ContactNumber</th>
					<th scope="col">Address</th>
					<th scope="col">AssetDate</th>
					<th scope="col">Status</th>
					<th scope="col">Price</th>
					<th scope="col">Length</th>
					<th scope="col">Breadth</th>
					<th scope="col">SquareFeet</th>
					<th scope="col">SurveyNumber</th>
					<th scope="col">PattaNumber</th>
					<th scope="col">ApprovedType</th>
					<th scope="col">Facing</th>
					<th scope="col">AssestType</th>
					<th scope="col">Image</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lan" items="${alldata}">
					
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
						<td><img
                            src="file://C:/Users/poob3127/eclipse-workspace/realestatemanagement/src/main/resources/Images/${lan.image}"
                            alt="image" width="100" height="100"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>