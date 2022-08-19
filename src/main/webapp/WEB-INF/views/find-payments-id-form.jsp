<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="" method="get" modelAttribute="findpayid">
<div>
					<label for="invoice">Invoice Id</label>
					<div>
						<form:input path="invoice" />
					</div>
				</div>
				<br>
				<div>
					<label for="assestNumber">AssestNumber</label>
					<div>
						<form:input path="assestNumber" />
					</div>
				</div>
				<br>
				<div>

					<label for="buyerAssestid">buyerAsses</label>
					<div>
						<form:input path="buyerAssestid"/>
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