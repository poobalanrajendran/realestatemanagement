<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>addland</title>
<script type="text/javascript">
	function squarefeetCalucation() {
		var a = document.getElementById("length").value;
		var b = document.getElementById("breadth").value;
		var squarefeet = parseFloat(a) * parseFloat(b);
		document.getElementById('squareFeet').value = squarefeet;
	}
</script>
<style>
/* .container {
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
} */
<%@include file="css/asset.css"%>
</style>
</head>
<body>
	<div class="container">

		<form:form action="/assest/addasset" method="post"
			enctype="multipart/form-data" modelAttribute="addassest">
			<h1>Asset Form</h1>
			<div class="row">
				<div class="col-25">
					<label for="id">Asset Id</label>
				</div>
				<div class="col-75">
					<form:input path="id" title="Asset ID only Contains 4 Numbers"
						pattern="[0-9]{4}" required="true" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="usersId">User Id</label>
				</div>
				<div class="col-75">
					<form:input path="usersId" title="user ID only Contains 4 Numbers"
						pattern="[0-9]{4}" required="true" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="location">Location</label>
				</div>
				<div class="col-75">
					<form:input path="location" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required="true" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="length">LandLength </label>
				</div>
				<div class="col-75">
					<form:input path="length" id="length" title="enter only two digit"
						pattern="[0-9]{2}" required="true"
						onchange="squarefeetCalucation();" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="breadth">LandBreadth</label>
				</div>
				<div class="col-75">
					<form:input path="breadth" id="breadth"
						title="LandBreadth should have atleast 2 digits"
						pattern="[0-9]{2}" onchange="squarefeetCalucation();"
						required="true" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-25">
					<label for="squareFeet">LandSquarefeet </label>
				</div>
				<div class="col-75">
					<form:input path="squareFeet" id="squareFeet"
						title="pattaNumber should have 4 To 7digits" pattern="[0-9]{4,7}"
						onchange="squarefeetCalucation(this.form);" required="true" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="surveyNumber">LandSurveyno</label>
				</div>
				<div class="col-75">
					<form:input path="surveyNumber"
						title="surveyNumber should have  2 digits" pattern="[0-9]{2}"
						required="true" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="pattaNumber">LandPattano</label>
				</div>
				<div class="col-75">
					<form:input path="pattaNumber"
						title="pattaNumber should have  2 digits" pattern="[0-9]{2}"
						required="true" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="contactNumber"> ContactNumber</label>
				</div>
				<div class="col-75">
					<form:input path="contactNumber"
						title="PhoneNumber should have atleast 10 digits"
						pattern="[0-9]{10}" required="true" />
				</div>
			</div>
			<br>
			<div class="row">
				ApprovedType:
				<form:radiobutton path="approvedType" value="C.M.D.A" />
				C.M.D.A
				<form:radiobutton path="approvedType" value="D.T.C.P" />
				D.T.C.P
			</div>

			<br>
			<div class="row">
				<div class="col-25">
					<label for="address">Address </label>
				</div>
				<div class="col-75">
					<form:textarea path="address" cols="50" rows="6"
						title="Address should atleast contain 10 characters"
						required="true" />
				</div>
			</div>
			<br>
			<div class="row">
				LandStatus :
				<form:radiobutton path="status" value="Sold" />
				Sold
				<form:radiobutton path="status" value="Not Sold" />
				Not Sold
			</div>

			<br>



			<div class="row">
				<div class="col-25">
					<label for="AssetType" class="label-size">AssetType</label>
				</div>
				<div class="col-75">
					<form:select path="assestType" class="text-box"
						placeholder="AssetType" title="Name can't be empty"
						required="true">
						<form:option value="PG">PG</form:option>
						<form:option value="Land">Land</form:option>
						<form:option value="Apartment">Apartment</form:option>
					</form:select>

				</div>

			</div>
			<br>



			<div class="row">
				<div class="col-25">
					<label for="Facing" class="label-size">Facing</label>
				</div>
				<div class="col-75">
					<form:select path="facing" class="text-box" placeholder="facing"
						title="Name can't be empty" required="true">
						<form:option value="North">North</form:option>
						<form:option value="South">South</form:option>
						<form:option value="East">East</form:option>
						<form:option value="West">West</form:option>
					</form:select>

				</div>

			</div>
			<br>

			<div class="row">
				<div class="col-25">
					<label for="price">Price</label>
				</div>
				<div class="col-75">
					<form:input path="price" title="Name can't be less than 5 to 7"
						pattern="[0-9]{5,7}" required="true" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-25">
					<label for="assetdate">Date</label>
				</div>
				<div class="col-75">
					<form:input type="date" path="assetdate" required="true" />
				</div>
			</div>
			<br>
			<div class="col-sm-5">
				<p>Product Image</p>
				<div class="custom-file">
					<input type="file" class="custom-file-input" name="assetImage"
						accept="image/jpeg, image/png ,image/jpg" id="assetImage" /> <label
						class="custom-file-label" for=assetImage>Choosefile</label>
				</div>
			</div>
			<input type="hidden" name="imgName" value="asset.image">
			<div class="row">
				<form:button class="btn">Add</form:button>
			</div>
		</form:form>
	</div>

</body>
</html>