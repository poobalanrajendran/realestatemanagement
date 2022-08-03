<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addpaymentform" method="post"
				modelAttribute="addpay">
				<div>
					<label for="invoiceId">Invoice Id</label>
					<div>
						<form:input path="invoiceId" />
					</div>
				</div>
				<br>
				<div>
					<label for="landAssestid">LandAssest Id </label>
					<div>
						<form:input path="landAssestid" />
					</div>
				</div>
				<br>
				<div>

					<label for="pgAssestid"> Pgassest Id</label>
					<div>
						<form:input path="pgAssestid" />
					</div>
				</div>
				<br>
				<div>
					<label for="appartmentAssestid">AppartmentAssest Id</label>
					<div>
						<form:input path="appartmentAssestid" />
					</div>
				</div>
				<br>
				<div>
					<label for="buyerAssestid">Buyer AssestId</label>
					<div>
						<form:input path="buyerAssestid" />
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
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" />
					</div>
				</div>
				<div>
					<form:button>click me for pay</form:button>
				</div>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>