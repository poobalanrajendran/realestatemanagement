<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>sucess</title>
<style>
h1, h2, h3 {
	text-align: center;
}

table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}
</style>
</head>
<body style="background-color: powderblue;">
	<h1>Loan Management System</h1>
	<h2>User Details and Loan EMI Details Form</h2>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="userslist">
				<div>
					<label for="usersId">users Id</label>
					<div>
						<form:input path="usersId" />
					</div>
				</div>
				<br>
				<div>
					<label for="usersName">users Name</label>
					<div>
						<form:input path="usersName" />
					</div>
				</div>
				<br>
				<div>
					<label for="passwords">passwords</label>
					<div>
						<form:input path="passwords" />
					</div>
				</div>
				<br>
				<div>
					Role :
					<form:radiobutton path="roles" value="User" />
					User
					<form:radiobutton path="roles" value="Admin" />
					Admin
				</div>

				<br>
				<label for="emailId">email Id</label>
				<div>
					<form:input path="emailId" />
				</div>
		
		<br>
		<div>
			<label for="address">address </label>
			<div>
				<form:textarea path="address" cols="50" rows="6" />
			</div>
		</div>
		<br>
		<div>
			<label for="phoneno">phoneno</label>
			<div>
				<form:input path="phoneno" />
			</div>
		</div>
		<br>
		<div>
			<label for="Dates">dates</label>
			<div>
				<form:input type="date" path="Dates" />
			</div>
		</div>
		<br>
		<div>
			Role :
			<form:radiobutton path="gender" value="Male" />
			Male
			<form:radiobutton path="gender" value="Female" />
			Female
			<form:radiobutton path="gender" value="Others" />
			Others
		</div>
		<br>
	
	</form:form>
	
	</div>
	</div>
	<div id="loan details">
		<table><caption></caption>
			<thead>
				<tr>
					<th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">EMI Date</th>
					<th scope="col">Payment Amount</th>
					<th scope="col">Payment ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Asset" items="${assetlist}">

					<tr>
						<td>${Asset.id}</td>
						<td>${Asset.usersId}</td>
						<td>${Asset.location}</td>
						<td>${Asset.contactNumber}</td>
						<td>${Asset.address}</td>
						<td>${Asset.assetdate}</td>
						<td>${Asset.status}</td>
						<td>${Asset.price}</td>
						<td>${Asset.length}</td>
						<td>${Asset.breadth}</td>
						<td>${Asset.squareFeet}</td>
						<td>${Asset.surveyNumber}</td>
						<td>${Asset.pattaNumber}</td>
						<td>${Asset.approvedType}</td>
						<td>${Asset.facing}</td>
						<td>${Asset.assestType}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>