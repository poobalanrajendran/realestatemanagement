<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>

<%@include file="css/payment.css"%>
</style>

</head>
<body>
<div class="container">

			<form:form action="addpaymentform" method="post"
				modelAttribute="addpay">
				<h1>Payment Details</h1>
				<div class="row">
                <div class="col-25">
					<label for="invoice">Invoice Id</label>
					</div>
					<div class="col-75">
						<form:input path="invoice" pattern="[0-9]{6}" required="true" title="Enter the integer only"/>
					</div>
				</div>
				<br>
				<div class="row">
                <div class="col-25">
					<label for="id">AssestId</label>
					</div>
					<div class="col-75">
						<form:input path="id" pattern="[0-9]{4}" title="Enter the integer four only" required="true"/>
					</div>
				</div>
				<br>
				<div class="row">
                <div class="col-25">
					<label for="buyerAssestid">UserId</label>
					</div>
					<div class="col-75">
						<form:input path="buyerAssestid" pattern="[0-9]{4}" title="Enter the integer four only" required="true"/>
					</div>
				</div>
				<br>
				
				<div class="row">
                <div class="col-25">
					<label for="assetdate">date</label>
					</div>
					<div class="col-75">
						<form:input type="date" path="assetdate" required="true"/>
					</div>
				</div>
				<br>
				<div class="row">
                <div class="col-25">
					<label for="amount">Amount</label>
					</div>
					<div class="col-75">
						<form:input path="amount" pattern="[0-9]{5,7}" title="Enter the integer five to seven digit only" required="true"/>
					</div>
				</div>
				
				<br>
				
				<div class="row">
						CardMode:
						<form:radiobutton path="cardMode" value="DebitCard"/>
					DebitCard
					<form:radiobutton path="cardMode" value="CreditCard"/>
				CreditCard
					</div>
				
				<br>
			<div class="row">
                <div class="col-25">
       <label for="cardNumber">Card Number</label>
       </div>
       <div class="col-75">
        <form:input path="cardNumber" pattern="[0-9]{12}" title="Enter the integer 12 digit only" required="true" />
       </div>
      </div>
      <br>
				
				<div class="row">
                <div class="col-25">
       <label for=nameHolder>CardHolderName</label>
       </div>
       <div class="col-75">
        <form:input  path="nameHolder" pattern="^[a-zA-Z]+$" title="Enter the Name" required="true"  />
       </div>
      </div>
      <br>
      
     <div class="row">
                <div class="col-25">
                    <label for="CardType" class="label-size">CardType</label>
                    </div>
                    <div class="col-75">
                        <form:select path="cardType" class="text-box" placeholder="cardType" title="can't be empty"
						 required="true">
                            <form:option value="Rupay">Rupay</form:option>
                            <form:option value="MasterCard">MasterCard</form:option>
                            <form:option value="Paytm">Paytm</form:option>
                            <form:option value="VISA">VISA</form:option>
                        </form:select>
                    
                </div>
					
				</div>
				<br>
				
				<div class="row">
                <div class="col-25">
       <label for="cvvNumber">CVV Number</label>
       </div>
        <div class="col-75">
        <form:input path="cvvNumber" pattern="[0-9]{3}" title="Enter the integer only" required="true"  />
       </div>
      </div>
      <br>
    <div class="row">
                <div class="col-25">
       <label for="expireMonth">Expire Month</label>
       </div>
        <div class="col-75">
        <form:input path="expireMonth" pattern="[0-9]{2}" title="Enter the integer two digit only" required="true" />
       </div>
      </div>
      <br>
  <div class="row">
                <div class="col-25">
       <label for="expireYear">Expire Year</label>
       </div>
               <div class="col-75">
       
        <form:input path="expireYear" pattern="[0-9]{4}" title="Enter the integer two digit only" required="true" />
       </div>
      </div>
      
      <br>
								
				<div class="row">
					<form:button class="btn">Payment</form:button>
				</div>
	
		</form:form>
	
	
	</div>
	
</body>
</html>