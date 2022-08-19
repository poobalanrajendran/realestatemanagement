<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>addappart</title>
<style>
<%@include file="css/appartment.css"%>
}
</style>
</head>
<script>
function display()
{
	alert("Apartment is Added");
	}
</script>
<body>
<div class="container">
	<div id="root">
		<div id="form">
			<form:form action="addappart" method="post" modelAttribute="addapparts">
			<h1>Apartment</h1>
				<div>
					<label for="appartmentId">Appartment Id </label>
					<div>
						<form:input path="appartmentId" pattern="[0-9]{4}" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="security">Security</label>
					<div>
						<form:input path="security" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20$" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="floor">Floor</label>
					<div>
						<form:input path="floor"  title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20$" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="lift">Appartment Lift </label>
					<div>
						<form:input path="lift" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20$" required="true"/>
					</div>
				</div>
				<br>
		
		<br>
		<div>

			<form:button  class="btn" onclick="display()">Add</form:button>
		</div>
		</form:form>
		</div>
	</div>
	</div>
</body>
</html>