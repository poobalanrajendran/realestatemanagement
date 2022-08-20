<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>addland</title>
<script>
   function changeAssetType(){
	 //  alert("1342432");
	   var asstType = document.getElementById("assestType").value;
	 //  alert("asstType "+asstType);
	  
	 /*  var myPgDiv = document.getElementById.('pg_details');
	   alert("2");
	   myPgDiv.style.display ="none";
	   alert("3");
	   var myPgApptDiv = document.getElementById.("pg_appartment");
	   myPgApptDiv.style.display ="none";
	   var myApprtDiv = document.getElementById.("appartment_details");
	   myApprtDiv.style.display ="none";
	   if(asstType === 'PG'){
		   alert("1");
		   document.getElementById.('pg_details').style.display ='block';
		   document.getElementById.('pg_appartment').style.display ='block';
	   }else if(asstType === 'Appartment'){
		   alert("2");
		   document.getElementById.('pg_appartment').style.display ='block';
		   document.getElementById.('appartment_details').style.display ='block';
	   }*/
   }

</script>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="/assest/addasset" method="post" modelAttribute="addassest">
				<div>
					<label for="id">Id</label>
					<div>
						<form:input type="number" path="id" title="Must have integer"/>
					</div>
				</div>
				<br>
				<div>
					<label for="usersId">User Id</label>
					<div>
						<form:input type="number" path="usersId"  title="Must have integer"/>
					</div>
				</div>
				<br>
				<div>
					<label for="location">Location</label>
					<div>
						<form:input path="location" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="length">LandLength </label>
					<div>
						<form:input type="number" path="length" title="LandLength should have atleast 2 digits" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="breadth">LandBreadth</label>
					<div>
						<form:input type="number" path="breadth"  title="LandBreadth should have atleast 2 digits" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="squareFeet">LandSquarefeet </label>
					<div>
						<form:input type="number" path="squareFeet" title="LandSquarefeet should have atleast 2 digits" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="surveyNumber">LandSurveyno</label>
					<div>
						<form:input type="number" path="surveyNumber"  title="surveyNumber should have atleast 1 digits" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="pattaNumber">LandPattano</label>
					<div>
						<form:input type="number" path="pattaNumber" title="pattaNumber should have atleast 1 digits" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="contactNumber"> ContactNumber</label>
					<div>
						<form:input path="contactNumber"  max="10"  title="PhoneNumber should have atleast 10 digits"
					pattern="^\\+?[1-9][0-9]{7,14}$" required="true"/>
					</div>
				</div>
				<br>

					<label for="approvedType">ApprovedType </label> -->
						<div>
						ApprovedType:
						<form:radiobutton path="approvedType" value="C.M.D.A"/>
					C.M.D.A
					<form:radiobutton path="approvedType" value="D.T.C.P"/>
				D.T.C.P
					</div>
				
				<br>
				<div>
					<label for="address">Address </label>
					<div>
						<form:textarea path="address" cols="50" rows="6" title="Address should atleast contain 10 characters" required="true"/>
					</div>
				</div>
				<br>
				<div>
					LandStatus :
					<form:radiobutton path="status" value="Sold"/>
					Sold
					<form:radiobutton path="status" value="Not Sold"/>
					Not Sold
				</div>

				<br>

				<div>
					<label for="assestType">AssestType </label>
				
					<form:select path="assestType" name="assestType" id="assestType" onchange="changeAssetType()">
								<form:option value="Land">Land</form:option>
								<form:option value="PG">PG</form:option>
								<form:option value="Appartment">Appartment</form:option>
							</form:select>
					
						
				
				</div>

				<div>
					<label for="facing">Facing </label>
					<div>
						<form:input path="facing" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>

				<div>
					<label for="price">Price</label>
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
				//
				
	  <div  id="pg_details">
	  <div>
       <label for="pgId">Paying Guest Id</label>
       <div >
        <form:input type="number" path="pgId" required="true" title="Enter the integer only"/>
       </div>
      </div>
      <br>
     
       <div>
                PG Type : <form:radiobutton path="pgType" value="Mens Hostel" required ="true"/>Mens Hostel
                         <form:radiobutton path="pgType" value="WomenMens Hostel" required ="true"/> WomenMens Hostel
                </div>
     
      <br>
   
      
      <div>
                PG foodFacility : <form:radiobutton path="foodFacility" value="Not Availabel" required ="true" />Not Availabel
                         <form:radiobutton path="foodFacility" value="Availabel" required ="true"/> Availabel
                </div>
     
      <br>
       
      <div>
              PG A/C Non A/C : <form:radiobutton path="acNonac" value="A/C" required ="true"/>A/C
                         <form:radiobutton path="acNonac" value="Non A/C" required ="true" />Non A/C
                </div>
                <br>
     
      <div>
       <label for="advance">Rent </label>
       <div >
        <form:input type="number" path="rent" required ="true" title="Enter the integer only"/>
       </div>
      </div>
      <br>
      <br>
     
      <div>
       <label for="advance">PG advance </label>
       <div >
        <form:input type="number" path="advance" required ="true" title="Enter the integer only"/>
       </div>
      </div>
      <br>
     </div>
     <div  id="pg_appartment">
       <div>
              Lift : <form:radiobutton path="lift" value="Available" required ="true"/>Available
                         <form:radiobutton path="lift" value="Not Available" required ="true"/>Not Available
                </div>
      
      <br>
      <div>
       <label for="floor">Floor</label>
       <div >
        <form:input path ="floor" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{1,20}$" required ="true"/>
       </div>
        </div>
        </div>
		<div  id="appartment_details">		
				<div>
					<label for="appartmentId">Appartment Id </label>
					<div>
						<form:input type="number" path="appartmentId" required="true"/>
					</div>
				</div>
				<br>
				<div>
					<label for="security">Security</label>
					<div>
						<form:input path="security" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20$" required="true"/>
					</div>
				</div>
				<br>
				
		</div>
		<br>
	
				

					<form:button>update</form:button>
			
				</form:form>			
		</div>
	</div>
</body>
</html>