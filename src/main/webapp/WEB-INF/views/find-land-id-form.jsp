<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="" method="get" modelAttribute="findlandid">
<div>
					<label for="id">Id</label>
					<div>
						<form:input path="id" />
					</div>
				</div>
				<br>
				<div>
					<label for="usersId">ownerid</label>
					<div>
						<form:input path="usersId" />
					</div>
				</div>
				<br>
				<div>
					<label for="location">location</label>
					<div>
						<form:input path="location" />
					</div>
				</div>
				<br>
				<div>
					<label for="length">landLength </label>
					<div>
						<form:input path="length" />
					</div>
				</div>
				<br>
				<div>
					<label for="breadth">landBreadth</label>
					<div>
						<form:input path="breadth" />
					</div>
				</div>
				<br>
				<div>
					<label for="squareFeet">landSquarefeet </label>
					<div>
						<form:input path="squareFeet" />
					</div>
				</div>
				<br>
				<div>
					<label for="surveyNumber">landSurveyno</label>
					<div>
						<form:input path="surveyNumber" />
					</div>
				</div>
				<br>
				<div>
					<label for="pattaNumber">landPattano</label>
					<div>
						<form:input path="pattaNumber" />
					</div>
				</div>
				<br>
				<div>
					<label for="contactNumber"> contactNumber</label>
					<div>
						<form:input path="contactNumber" />
					</div>
				</div>
				<br>
				<div>
					<label for="approvedType">ApprovedType </label>
					<div>
						<form:input path="approvedType" />
					</div>
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
						<form:input path="assestType" />
					</div>
				</div>

				<div>
					<label for="facing">facing </label>
					<div>
						<form:input path="facing" />
					</div>
				</div>

				<div>
					<label for="price">price</label>
					<div>
						<form:input path="price" />
					</div>
				</div>
				<br>
				<div>
					<label for="assetdate">dates</label>
					<div>
						<form:input type="date" path="assetdate" />
					</div>
				</div>
				<br>
				<div>

					<form:button>AddLand</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>