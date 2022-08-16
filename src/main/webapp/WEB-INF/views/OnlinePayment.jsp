<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>payment</title>
</head>

<body>

	<center>
		<div class="container">
			<form action="">
				<div class="row">


					<div class="col">
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
					<br> <!-- <input type="submit" value="proceed to checkout"
						class="submit"> -->
						
						<button><a href="/payment/transcationpayment">click me for pay</a></button>
				</div>
			</form>
		</div>
	</center>



</body>
</html>