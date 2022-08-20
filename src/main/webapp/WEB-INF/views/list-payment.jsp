<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
<div id="table root">
<table>
<thead>
<tr>
<th>Invoice</th>
<th>assestNumber</th>
<th>buyerAssestid</th>
<th>assetdate</th>
<th>amount</th>

</tr>
</thead>
<tbody>
<c:forEach var="pay" items="${allpayment}"> 
<tr>
<td>${pay.invoice}</td>
<td>${pay.id}</td>
<td>${pay.buyerAssestid}</td>
<td>${pay.assetdate}</td>
<td>${pay.amount}</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>
</body>
</html>