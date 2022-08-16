<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addusers</title>
<style>
@charset "ISO-8859-1";
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image:
		url("https://previews.123rf.com/images/mettus/mettus1303/mettus130303963/18629743-abstract-watercolor-background-paper-design-of-bright-color-splashes-modern-art.jpg");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
.center {
  text-align: center;
}

/* BTW alt-shift will pop a color picker 
  example color: followed  by alt shift will pop it
*/
/*
Hide the label if placeholder is supported
*/

/* body{
  background:#b4b4b4;
} */

#registration-form {
  font-family:'Open Sans Condensed', sans-serif;
	width: 400px;
  min-width:250px;
	margin: 20px auto;
	position: relative;
}

#registration-form .fieldset {
	background-color:#d5d5d5;

	border-radius: 3px;
  
}

 #registration-form legend {
	text-align: center;
	background: #364351;
	width: 100%;
	padding: 30px 0;
	border-radius: 3px 3px 0 0;
	color: white;
font-size:2em;
}

.fieldset form{
  border:1px solid #2f2f2f;
  margin:0 auto;
  display:block;
  width:100%;
  padding:30px 20px;
  box-sizing:border-box;
  border-radius:0 0 3px 3px;
}
.placeholder #registration-form label {
	display: none;
}
 .no-placeholder #registration-form label{
margin-left:5px;
  position:relative;
  display:block;
  color:grey;
  text-shadow:0 1px white;
  font-weight:bold;
}
/* all */
::-webkit-input-placeholder { text-shadow:1px 1px 1px white; font-weight:bold; }
::-moz-placeholder { text-shadow:0 1px 1px white; font-weight:bold; } /* firefox 19+ */
:-ms-input-placeholder { text-shadow:0 1px 1px white; font-weight:bold; } /* ie */
#registration-form input[type=text] {
	padding: 15px 20px;
	border-radius: 1px;
  margin:5px auto;
  background-color:#f7f7f7;
	border: 1px solid silver;

	-webkit-box-shadow: inset 0 1px 5px rgba(0,0,0,0.2);
	box-shadow: inset 0 1px 5px rgba(0,0,0,0.2), 0 1px rgba(255,255,255,.8);
	width: 100%;

	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
  -webkit-transition:background-color .5s ease;
-moz-transition:background-color .5s ease;
-o-transition:background-color .5s ease;
-ms-transition:background-color .5s ease;
transition:background-color .5s ease;
}
.no-placeholder #registration-form input[type=text] {
	padding: 10px 20px;
}

#registration-form input[type=text]:active, .placeholder #registration-form input[type=text]:focus {
	outline: none;
	border-color: silver;
  background-color:white;
}

#registration-form input[type=submit] {
  font-family:'Open Sans Condensed', sans-serif;
  text-transform:uppercase;
  outline:none;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	width: 100%;
	background-color: #5C8CA7;
	padding: 10px;
	color: white;
	border: 1px solid #3498db;
	border-radius: 3px;
	font-size: 1.5em;
	font-weight: bold;
	margin-top: 5px;
	cursor: pointer;
  position:relative;
  top:0;
}

#registration-form input[type=submit]:hover {
	background-color: #2980b9;
}

#registration-form input[type=submit]:active {
background:#5C8CA7;
}


.parsley-error-list{
background-color:#C34343;
padding: 5px 11px;
margin: 0;
list-style: none;
border-radius: 0 0 3px 3px;
margin-top:-5px;
  margin-bottom:5px;
  color:white;
  border:1px solid #870d0d;
  border-top:none;
    -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  position:relative;
  top:-1px;
  text-shadow:0px 1px 1px #460909;
    font-weight:700;
  font-size:12px;
}
.parsley-error{
	border-color:#870d0d!important;
  border-bottom:none;
}
#registration-form select{
	width:100%;
	padding:5px;
}
::-moz-focus-inner {
  border: 0;
}


/* * {
  background-image: url("http://www.empressgroup.in/images/overview-banner.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 1010px 331px;
}


.container {
    margin-top: 1%;
    margin-left: 30%;
    border-radius: 5px;
    background-color: #E8DAEF ;
    padding: 30px;
    width: 40%;
    float: left;
}
*{text-align:center;}
.btn {
    display: inline-block;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    outline: none;
    color: white;
    background-color: #6bb6ff;
    border: none;
    border-radius: 10px;
    box-shadow: 0 9px #1E90FF;
    margin-left: 10px;
    margin-top: 10px;
}

.btn:hover {
    background-color: #6bb6ff
}

.btn:active {
    background-color: #9932CC;
    box-shadow: 0 5px #666;
    transform: translateY(4px);
}
.font{
font-size: 40;
 }*/
</style>
</head>
<body>
	<!-- <div class="container"> -->
		<div id="registration-form" class="center">
        <div id="form" class='fieldset'>
				<form:form action="/users/addusers" method="post"
					modelAttribute="adduser">
					<h1>Add User Form</h1>
					<div>
						<label for="usersId" class="font" >User Id</label>
						<div>
							<form:input type="number" path="usersId" required="true" />
						</div>
					</div>
					<br>
					<div>
						<label for="usersName" class="font">User Name</label>
						<div>
							<form:input path="usersName" pattern="^[a-zA-Z]+$"
								required="true" />
						</div>
					</div>
					<br>
					<div>
						<label for="passwords" class="font">Password</label>
						<div>
							<form:input type="password" path="passwords"
								title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
								pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
								required="true" />
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
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email" required="true" />
					</div>
			<br>
			<div>
				<label for="address">Address </label>
				<div>
					<form:textarea path="address" cols="15" rows="4"
						title="Address should atleast contain 10 characters"
						required="true" />
				</div>
			</div>
			<br>
			<div>
				<label for="phoneno">PhoneNumber</label>
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

			<div class="row">
            <form:button class="btn">User</form:button>
            </div>
		</form:form>
	</div>
	</div> 
</body>
</html>