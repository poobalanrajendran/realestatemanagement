<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addland</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="/assest/updateland" method="post" modelAttribute="updateland">
<div>
					<label for="id">Id</label>
					<div>
						<form:input type="number" path="id" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="usersId">UserId</label>
					<div>
						<form:input type="number" path="usersId" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="location">location</label>
					<div>
						<form:input path="location" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="length">landLength </label>
					<div>
						<form:input type="number" path="length"  title="LandLength should have atleast 2 digits" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="breadth">landBreadth</label>
					<div>
						<form:input type="number" path="breadth"  title="LandLength should have atleast 2 digits" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="squareFeet">landSquarefeet </label>
					<div>
						<form:input type="number" path="squareFeet" title="LandSquarefeet should have atleast 2 digits" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="surveyNumber">landSurveyno</label>
					<div>
						<form:input type="number" path="surveyNumber" title="LandSquarefeet should have atleast 2 digits" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="pattaNumber">landPattano</label>
					<div>
						<form:input type="number" path="pattaNumber" title="LandSquarefeet should have atleast 2 digits" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="contactNumber"> contactNumber</label>
					<div>
						<form:input type="number" path="contactNumber"  max="10"  title="PhoneNumber should have atleast 10 digits"
					pattern="^\\+?[1-9][0-9]{7,14}$" required="true"/>
					</div>
				</div>
				<br>
				<%-- <div>
					<label for="approvedType">ApprovedType </label>
					<div>
						<form:input path="approvedType" />
					</div>
				</div> --%>
				ApprovedType:
						<form:radiobutton path="approvedType" value="C.M.D.A"/>
					C.M.D.A
					<form:radiobutton path="approvedType" value="D.T.C.P"/>
				D.T.C.P
					</div>
				<br>
				<div>
					<label for="address">address </label>
					<div>
						<form:textarea path="address" cols="50" rows="6" title="Address should atleast contain 10 characters" required="true"/>
					</div>
				</div>
				<br>
				<div>
					landStatus :
					<form:radiobutton path="status" value="Sold" />
					Sold
					<form:radiobutton path="status" value="Not Sold" />
					Not Sold
				</div>

				<br>

				<div>
					<label for="assestType">assestType </label>
					<div>
						<form:input path="assestType" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required="true"/>
					</div>
				</div>

				<div>
					<label for="facing">facing </label>
					<div>
						<form:input path="facing" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true" />
					</div>
				</div>

				<div>
					<label for="price">price</label>
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
				<div>

					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>