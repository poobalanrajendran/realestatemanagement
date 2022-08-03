<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
<div id="table root">
<table>
<thead>
<tr>
<th>invoiceId</th>
<th>landAssestid</th>
<th>pgAssestid</th>
<th>appartmentAssestid</th>
<th>buyerAssestid</th>
<th>dates</th>
<th>amount</th>

</tr>
</thead>
<tbody>
<c:forEach var="pay" items="${allpayment}"> 
<tr>
<td>${pay.invoiceId}</td>
<td>${pay.landAssestid}</td>
<td>${pay.pgAssestid}</td>
<td>${pay.appartmentAssestid}</td>
<td>${pay.buyerAssestid}</td>
<td>${pay.dates}</td>
<td>${pay.amount}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>