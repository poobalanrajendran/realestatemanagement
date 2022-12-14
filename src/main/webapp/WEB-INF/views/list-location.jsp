<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Land List</title>
<style type="text/css">
/* 
tr:hover {background-color: #ECF32D;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
   background-color: rgba(150, 212, 212, 0.4);
}

th:nth-child(even),td:nth-child(even) {
  background-color: rgba(300, 120, 130, 0.4);
} */
<%@include file="css/chennailocationtable.css"%>
</style>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>

	<table id="alter" class="center"><caption></caption>
			<thead>
				<tr>
					<th>AssetId</th>
					
					<th>UserId</th>
					
					<th>Location</th>
					<th>ContactNumber</th>
					<th>Address</th>
					<th>AssetDate</th>
					<th>AssetStatus</th>
					<th>Price</th>
					<th>AssetLength</th>
					<th>AssetBreadth</th>
					<th>squareFeet</th>
					<th>AssetSurveyNumber</th>
					<th>AssetPattaNumber</th>
					<th>AssetApprovedType</th>
					<th>AssetFacing</th>
					<th>assestType</th>
					<th>AssetImage</th>
					<th>Register</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lan" items="${allproperty}">
					<tr>
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
						
						
					<%--<td><button ${lan.status eq 'Sold'  ? 'disabled="disabled"' : ''}  class ="btn" onclick="window.location.href='/payment/paymentform'">Buy</button></td> --%>
				<td><button ${lan.status eq 'Sold'  ? 'disabled="disabled"' : ''} onclick="showPayment(${lan.id})">Buy</button></a></td>
				 </tr>
				</c:forEach>
			</tbody>
		</table>
</body> 
<script>
  function showPayment(assetId)
    {
    	window.location.href="/payment/paymentform?assId="+assetId;
    }
  </script>
</html>