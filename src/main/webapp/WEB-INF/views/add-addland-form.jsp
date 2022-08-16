<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addland</title>
<script type="text/javascript">
function squarefeetCalucation()
{
	var a = document.getElementById("length").value;
	var b = document.getElementById("breadth").value;
	 var squarefeet =parseFloat(length)*parseFloat(breadth); */
	document.getElementById('squareFeet').value = squarefeet;
	}
</script>
<style>
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

</style>
</head>
<body >
<div class="container">
	<div id="root">
		<div id="form">
			<form:form action="/assest/addasset" method="post" modelAttribute="addassest">
			<h1>Asset Form</h1>
				<div>
					<label for="id">Id</label>
					
					<div>
						<form:input type="number" path="id" title="Must have integer"/>
					</div>
				 </div> 
				<br>
				<div>
					<label for="usersId">User Id</label>
					<div>
						<form:input type="number" path="usersId"  title="Must have integer"/>
					</div>
				</div>
				<br>
				<div>
					<label for="location">Location</label>
					<div>
						<form:input path="location" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="length">LandLength </label>
					<div>
						<form:input type="number"  path="length" id="length" title="LandLength should have atleast 2 digits" name="length" Value="0" onchange="squarefeetCalucation();" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="breadth">LandBreadth</label>
					<div>
						<form:input type="number" path="breadth" id="breadth"  title="LandBreadth should have atleast 2 digits" name="breadth" Value="0" onchange="squarefeetCalucation();" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="squareFeet">LandSquarefeet </label>
					<div>
						<form:input type="number" path="squareFeet" id="squarefeet"  Value="multiple" name="squarefeet" required="true"  />
					</div>
				</div>
				<br>
				<div>
					<label for="surveyNumber">LandSurveyno</label>
					<div>
						<form:input type="number" path="surveyNumber"  title="surveyNumber should have atleast 1 digits" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="pattaNumber">LandPattano</label>
					<div>
						<form:input type="number" path="pattaNumber" title="pattaNumber should have atleast 1 digits" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="contactNumber"> ContactNumber</label>
					<div>
						<form:input path="contactNumber"  max="10"  title="PhoneNumber should have atleast 10 digits"
					pattern="^\\+?[1-9][0-9]{7,14}$" required="true"/>
					</div>
				</div>
				<br>
				<!-- <div>
					<label for="approvedType">ApprovedType </label> -->
					<!-- <div> -->
						<%-- <form:input path="approvedType" /> --%>
						<div>
						ApprovedType:
						<form:radiobutton path="approvedType" value="C.M.D.A"/>
					C.M.D.A
					<form:radiobutton path="approvedType" value="D.T.C.P"/>
				D.T.C.P
					</div>
				
				<br>
				<div>
					<label for="address">Address </label>
					<div>
						<form:textarea path="address" cols="50" rows="6" title="Address should atleast contain 10 characters" required="true"/>
					</div>
				</div>
				<br>
				<div>
					LandStatus :
					<form:radiobutton path="status" value="Sold"/>
					Sold
					<form:radiobutton path="status" value="Not Sold"/>
					Not Sold
				</div>

				<br>

				
					
					<div>
                    <label for="AssetType" class="label-size">AssetType</label>
                    <div>
                        <form:select path="assestType" class="text-box" placeholder="AssetType" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required="true">
                            <form:option value="PG">PG</form:option>
                            <form:option value="Land">Land</form:option>
                            <form:option value="Apartment">Apartment</form:option>
                        </form:select>
                    
                </div>
					
				</div>
				<br>

				
				
				<div>
                    <label for="Facing" class="label-size">Facing</label>
                    <div>
                        <form:select path="facing" class="text-box" placeholder="facing" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required="true">
                            <form:option value="North">North</form:option>
                            <form:option value="South">South</form:option>
                            <form:option value="East">East</form:option>
                             <form:option value="West">West</form:option>
                        </form:select>
                    
                </div>
					
				</div>
				<br>

				<div>
					<label for="price">Price</label>
					<div>
						<form:input type="number" path="price" requried="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="assetdate">Date</label>
					<div>
						<form:input type="date" path="assetdate"/>
					</div>
				</div>
				<br>
				<div class="row">
            <form:button class="btn">Add</form:button>
            </div>
				</form:form>			
		</div>
	</div>
	</div>
</body>
</html>