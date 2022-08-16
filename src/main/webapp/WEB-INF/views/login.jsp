<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Login App</title>
<link rel="stylesheet" type="text/css" href="jslogin.css">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta name="x-apple-disable-message-reformatting">
<meta name="viewport"
	content="width=device-width, initial-scale=0.86, maximum-scale=3.0, minimum-scale=0.86">

<style>
@import
	url('https://fonts.googleapis.com/css?family=Playfair+Display:400,900|Poppins:400,500')
	;

* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	box-sizing: border-box;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-webkit-text-size-adjust: none;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

body {
	margin: 0;
	padding: 0;
	background: #f6f6f6;
	font-family: 'Poppins', sans-serif;
	overflow-x: hidden;
	height: 100vh;
	margin: auto;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	flex-flow: row wrap;
	-ms-flex-flow: row wrap;
}

img {
	max-width: 100%;
}

.app {
	background-color: #fff;
	width: 330px;
	height: 570px;
	margin: 2em auto;
	border-radius: 5px;
	padding: 1em;
	position: relative;
	overflow: hidden;
	box-shadow: 0 6px 31px -2px rgba(0, 0, 0, .3);
}

a {
	text-decoration: none;
	color: #257aa6;
}

p {
	font-size: 13px;
	color: #333;
	line-height: 2;
}

.light {
	text-align: right;
	color: #fff;
}

.light a {
	color: #fff;
}

.bg {
	width: 400px;
	height: 550px;
	background: #257aa6;
	position: absolute;
	top: -5em;
	left: 0;
	right: 0;
	margin: auto;
	background-image:
		url("https://png.pngtree.com/thumb_back/fw800/background/20190221/ourmid/pngtree-blue-creative-gradient-decoration-image_11175.jpg");
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	-webkit-clip-path: ellipse(69% 46% at 48% 46%);
	clip-path: ellipse(69% 46% at 48% 46%);
}

form {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	width: 100%;
	text-align: center;
	padding: 2em;
}

header {
	width: 220px;
	height: 220px;
	margin: 1em auto;
}

form input {
	width: 100%;
	padding: 13px 15px;
	margin: 0.7em auto;
	border-radius: 100px;
	border: none;
	background: rgb(255, 255, 255, 0.3);
	font-family: 'Poppins', sans-serif;
	outline: none;
	color: #fff;
}

input::placeholder {
	color: #fff;
	font-size: 13px;
}

.inputs {
	margin-top: -4em;
}

footer {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	padding: 2em;
	text-align: center;
}

button {
	width: 100%;
	padding: 13px 15px;
	border-radius: 100px;
	border: none;
	background: #257aa6;
	font-family: 'Poppins', sans-serif;
	outline: none;
	color: #fff;
}

@media screen and (max-width: 640px) {
	.app {
		width: 100%;
		height: 100vh;
		border-radius: 0;
	}
	.bg {
		top: -7em;
		width: 450px;
		height: 95vh;
	}
	header {
		width: 90%;
		height: 250px;
	}
	.inputs {
		margin: 0;
	}
	input, button {
		padding: 18px 15px;
	}
}
</style>

</head>
<body>
	<div class="app">

		<div class="bg"></div>

		<form action="/home/userpage" method="post" modelAttribute="signIn">
			<header>
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVYq5SvPw9gYATcRgyhZWVpqHltZL29dydAg&usqp=CAU"">
			</header>

			<div class="inputs">
				<input type="UserId"  id="usersId" name="usersId" placeholder="UserId">
				<input type="password"  id="passwords"  name="passwords" placeholder="password">

				<p class="light">
					
				</p>
			</div>
			<br>
			<br>
			<br>
			<br>
			
			<button>Login</button>
		
		</form>

		<footer>

			<p>
				Don't have an account? <a href="/users/usersform">Sign Up</a>
			</p>
		</footer>


	</div>
</body>
</html>
