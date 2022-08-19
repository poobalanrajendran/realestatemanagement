<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>addusers</title>
<style>
<%@include file="css/adduser.css"%>
</style>
</head>
<body>
	<div class="container"> 

				<form:form action="/users/addusers" method="post"
					modelAttribute="adduser">
					<h1>Add User Form</h1>
					 <div class="row">
                <div class="col-25">
						<label for="usersId" class="font" >User Id</label>
						</div>
						    <div class="col-75">
							<form:input  path="usersId" required="true" placeholder="enter user Id" pattern="[0-9]{4}" title="user Id only contains Numbers" />
						</div>
					</div>
					
					<br>
					<div class="row">
                <div class="col-25">
						<label for="usersName" class="font">User Name</label>
						</div>
						<div class="col-75">
							<form:input path="usersName" placeholder="enter your name" title="Name can't be empty or must contain only alphabets" pattern="^[a-zA-Z]+$" required="true" />
						</div>
					</div>
					<br>
					
					<div class="row">
                <div class="col-25">
						<label for="passwords" class="font">Password</label>
						</div>
						<div class="col-75">
							<form:input type="password" path="passwords"
								title="password must begin with letter and contain atleast one number and must have atleast 8 characters"
								pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
								required="true" />
						</div>
					</div>
					<br>
					
					<div class="row">
               
						Role :
						<form:radiobutton path="roles" value="User" />
						User
						<form:radiobutton path="roles" value="Admin" />
						Admin
					</div>

					<br>
					<div class="row">
                <div class="col-25">
					<label for="emailId">Email Id</label>
					</div>
					<div class="col-75">
						<form:input path="emailId"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email" required="true" placeholder="eg.aga@gamail.com" />
					</div>
					</div>
			<br>
			
			<div class="row">
                <div class="col-25">
				<label for="address">Address </label>
				</div>
				<div class="col-75">
					<form:textarea path="address" cols="35" rows="4"
						title="Address should atleast contain 10 characters"
						required="true" />
				</div>
			</div>
			<br>
			<div class="row">
                <div class="col-25">
				<label for="phoneno">PhoneNumber</label>
				</div>
				<div class="col-75">
					<form:input path="phoneno" max="10"
						title="PhoneNumber should have atleast 10 digits"
						pattern="[0-9]{10}" required="true" />
				</div>
			</div>
			<br>
			<div class="row">
                <div class="col-25">
                
				<label for="Dates">Date</label>
				</div>
				
				<div class="col-75">
					<form:input type="date" path="Dates" />
				</div>
			</div>
			
			<br>
			<div class="row">
				Gender :
				<form:radiobutton path="gender" value="Male" />
				Male
				<form:radiobutton path="gender" value="Female" />
				Female
				<form:radiobutton path="gender" value="Others" />
				Others
			</div>
			<br>

			<div class="row">
            <form:button class="btn">User</form:button>
            </div>
		</form:form>
	</div>
	
</body>
</html>