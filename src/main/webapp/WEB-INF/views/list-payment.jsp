<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
 <%@include file="css/allpayment.css"%>
    
    </style>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>
<br>
<h1>Transaction</h1>
<div>
<table class="table"><caption></caption>
<thead>
<tr>
<th scope="col">Invoice</th>
<th scope="col">AssestNumber</th>
<th scope="col">BuyerAssestId</th>
<th scope="col">AssetDate</th>
<th scope="col">Amount</th>

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