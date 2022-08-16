<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update users</title>
<style>

body{
background: url('data:image/jpeg;base64,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')
}
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: -75px -75px -75px -75px;
}
</style>
</head>
<body>
	<div class="container">
		<div id="root">
			<div id="form">
			
				<form:form action="updateuser" method="post"
					modelAttribute="updateuser">
					<div>
						<label for="usersId">user Id</label>
						<div>
							<form:input type="number" path="usersId" required="true" />
						</div>
					</div>
					<br>
					<div>
						<label for="usersName">user Name</label>
						<div>
							<form:input path="usersName" pattern="^[a-zA-Z]+$"
								required="true" />
						</div>
					</div>
					<br>
					<div>
						<label for="passwords">Password</label>
						<div>
							<form:input type="password" path="passwords" />
						</div>
					</div>
					<br>

					<div>

						<label for="emailId">email Id</label>
						<div>
							<form:input path="emailId"
								pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
								title="Invalid email" required="true" />
						</div>
					</div>
					<br>

					<div>
						<label for="phoneno">phoneNo</label>
						<div>
							<form:input path="phoneno" max="10"
								title="PhoneNumber should have atleast 10 digits"
								pattern="^\\+?[1-9][0-9]{7,14}$" />

						</div>
					</div>
					<br>
					<div>
						<label for="Dates">Date</label>
						<div>
							<form:input type="date" path="Dates" />
						</div>
					</div>
					<br>
					<div>
						Gender :
						<form:radiobutton path="gender" value="Male" />
						Male
						<form:radiobutton path="gender" value="Female" />
						Female
						<form:radiobutton path="gender" value="Others" />
						Others
					</div>
					<br>
					<div>
						<label for="address">Address </label>
						<div>
							<form:textarea path="address" cols="50" rows="6" />
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

					<%-- <form:button><a href="/users/updateform?findusersbyid=${userId}">user</a></form:button> --%>
					<form:button>User</form:button>
			</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>