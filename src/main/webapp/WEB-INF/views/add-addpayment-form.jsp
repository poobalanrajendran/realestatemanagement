<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>

div.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>

</head>
<body>
<div class="container">
	<div id="root">
		<div id="form">
			<form:form action="addpaymentform" method="post"
				modelAttribute="addpay">
				<div>
					<label for="invoice">Invoice Id</label>
					<div>
						<form:input type="number" path="invoice" required="true" title="Enter the integer only"/>
					</div>
				</div>
				<br>
				<div>
					<label for="id">AssestId</label>
					<div>
						<form:input type="number" path="id" required="true" title="Enter the integer only"/>
					</div>
				</div>
				<br>
				<div>

					<label for="buyerAssestid">UserId</label>
					<div>
						<form:input type="number" path="buyerAssestid" required="true" title="Enter the integer only"/>
					</div>
				</div>
				<br>
				
				<div>
					<label for="assetdate">date</label>
					<div>
						<form:input type="date" path="assetdate" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input type="number" path="amount" title="Enter the integer only"/>
					</div>
				</div>
				<div>
				<br>
				
				<div>
						CardMode:
						<form:radiobutton path="cardMode" value="DebitCard"/>
					DebitCard
					<form:radiobutton path="cardMode" value="CreditCard"/>
				CreditCard
					</div>
				
				<br>
				<div>
       <label for="cardNumber">Card Number</label>
       <div >
        <form:input type="number" path="cardNumber" pattern="^[1-9]{4}[-]{1}[0-9]{4}[-]{1}[0-9]{4}$" title="Enter the integer only" required="true" />
       </div>
      </div>
      <br>
				
				<div>
       <label for=nameHolder>CardHolderName</label>
       <div >
        <form:input  path="nameHolder" pattern="^[a-zA-Z]+$" title="Enter the Name" required="true"  />
       </div>
      </div>
      <br>
      
      <div>
                    <label for="CardType" class="label-size">CardType</label>
                    <div>
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
				
				<div>
       <label for="cvvNumber">CVV Number</label>
       <div >
        <form:input type="number" path="cvvNumber" pattern="[0-9]{3}" title="Enter the integer only" required="true"  />
       </div>
      </div>
      <br>
      <div>
       <label for="expireMonth">Expire Month</label>
       <div >
        <form:input type="number" path="expireMonth" pattern="[0-9]{2}" required="true" title="Enter the integer only"  />
       </div>
      </div>
      <br>
      <div>
       <label for="expireYear">Expire Year</label>
       <div >
        <form:input type="number" path="expireYear" pattern="[0-9]{4}" required="true" title="Enter the integer only" />
       </div>
      </div>
      
      <br>
				
				<!-- <div class="col">
						<h3 class="title">Online Payment</h3>

						<div class="inputBox">
							<span>Card Holder Name :</span> <input type="text"
								placeholder="john deo" pattern="^[a-zA-Z]+$" required="true" />
						</div>
						<br>
						<div class="inputBox">
							<span> card number :</span> <input type="number" placeholder="11"
								pattern="^[1-9]{4}[-]{1}[0-9]{4}[-]{1}[0-9]{4}$"
								title="Adhaar must be number(ex: 1234-5678-9012)"
								required="true" />
						</div>
						<br>
						<div>
							<label for="card">CardType:</label> <select name="card" id="card">
								<option value="Credit Card">No Card</option>
								<option value="Credit Card">Credit Card</option>
								<option value="Debit Card">Debit Card</option>
							</select>
						</div>
						<br>
						<div>
							<label for="card">CardName:</label> <select name="card" id="card">
								<option value="NoCard">NoCard</option>
								<option value="RuPay">RuPay</option>
								<option value="MasterCard">MasterCard</option>
								<option value="VISA">VISA</option>
								<option value="Maestro">Maestro</option>

							</select>
						</div>
						<br>

						<div class="inputBox">
							<span>expire month :</span> <input type="text"
								placeholder="january" pattern="[0-9]{4}">
						</div>
						<br>
						<div class="flex">
							<div class="inputBox">
								<span>expire year :</span> <input type="text"
									placeholder="india" pattern="[0-9]{4}">
							</div>
							<br>
							<div class="inputBox">
								<span>CVV :</span> <input type="text" placeholder="123"
									pattern="[0-9]{3}">
							</div>
							<br>
						</div>
					</div>
					<br>				
					 -->
					//
				
					<form:button>Payment</form:button>
				</div>
		</div>
		</form:form>
	</div>
	</div>
	</div>
</body>
</html>