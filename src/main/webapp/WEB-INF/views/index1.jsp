<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
  
   
   
      <!--  <link rel="stylesheet" href="../WEB-INF/views/css/index.css"> -->
<%--     <%@include file ="../WEB-INF/views/css/index.css"%> --%>
  <style>
    *{
  padding: 0%;
  margin: 0%;
}

.header-container {
    overflow: hidden;
    background-color: #333;
    display: flex;
  }

  .header-container .header:hover {
    background-color: red;
  }
  
  .header-container a{
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }
  
  .header-container .log-out{    
    margin-left: 65%;
  }

  .dropdown-2 {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }
  
  .dropdown-2 a{
    float: none;
    color: black;
    padding: 5px 10px;
    text-decoration: none;
    display: block;
    text-align: left;
    border: none;
  }

  .buyer-list button{
    float: none;
    color: black;
    background-color: #f9f9f9;
    width: 100%;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
    border: none;
  }

  .dropdown-0:hover .dropdown-2 {
    display: block;
  }

  .dropdown-0 .dropbtn-1 {
    font-size: 16px;  
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
  }

  .dropdown-2 {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }

  .buyer-list{
    display: none;
  }

  .buyer:hover .buyer-list {
    display: block !important;
    position: absolute;
    top: 0px;
    left: 155px;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  } 
  /*  */
  .mySlides {
      display:none;
      width:100%;
    }
  
    .w3-sections{
      margin-top: 0px !important;
      margin-bottom: 0px !important;
    }
    
    .w3-content-width{
      width: 100%;
    }
  
    .mySlides{
      height: 610px;
    }
  /*  */
 
      </style>
    
</head>

  <script>
    function displayDetails(location){
    	 alert("assest");
     	window.location.href="/assest/location?location="+location;
     }
    function displayUser(usersId)
    {
    	window.location.href="/assest/userid?userid="+usersId;
    }
  </script>



<body>

    <div class="header-container">
      <div class="header">
        <a href="/home/page">Home</a>
      </div>
      <div class="header dropdown-0">
          <div class="dropbtn-1">
            Assest
          </div>
          <div class="dropdown-2">
            <div class="buyer">
              <a href="#">
                Buyer
              </a>
              <div class="buyer-list">
               
               <button onclick="displayDetails('chennai')">Chennai</button>
               <button onclick="displayDetails('Bangalore')">Bangalore</button>
               <button onclick="displayDetails('Pune')">Pune</button>
               <button onclick="displayDetails('pondicherry')">pondicherry</button>
               <button onclick="displayDetails('Mumbai')">Mumbai</button>
               <button onclick="displayDetails('Noida')">Noida</button>
               <button onclick="displayDetails('Kochi')">Kochi</button>
               <button onclick="displayDetails('Goa')">Goa</button>
               
              </div>
            </div>
            <a href="/assest/addform">
              Seller
            </a>
          </div> 
      </div> 
     <div class="header">
      <a href="">About</a> 
      </div>
      <div class="header">
        <a href="/home/homecontact">Contact</a>
      </div>
      <div class="header dropdown-0">

         <div class="dropbtn-1">
        profile
         </div>
        
          
              <div class="dropdown-2">
              
            <a href="#">
            
              <c:if test="${roles == 'User'}">  
              <a href="/users/updateform?userid=${userId}"> updateProfile</a> </c:if>           
              </a>
              
              <a href="#">
              <c:if test="${roles == 'User'}">  <a href="/payment/transactionDetails?userid=${userId}">Transcation</a> </c:if>        
            </a>
            <a href="# ">
              <c:if test="${roles == 'User'}">  <a href="/assest/userid?userid=${userId}">AssetPosted</a> </c:if>        
            </a>
            <a href="#">
              <c:if test="${roles == 'Admin'}">  <a href="/users/updateform?userid=${userId}"> UpdateProfile</a> </c:if>           
              </a>
              <a href="#">
              <c:if test="${roles == 'Admin'}">  <a href="/users/userslist"> AllUser</a> </c:if>           
              </a>
              <a href="#">
              <c:if test="${roles == 'Admin'}">  <a href="/assest/getAllAsset">AssetPosted</a> </c:if>        
            </a>
            <a href="#">
              <c:if test="${roles == 'Admin'}">  <a href="/payment/transactionDetails?userid=${userId}">Transcation</a> </c:if>        
            </a>
     
     
             <%-- <a href="#">
              <c:if test="${roles == 'User'}">  <button onclick=<a href="displayUser(usersId')"/a>>Assetposted</button> </c:if>        
            </a> --%>
           
    
      </div>
      </div>
      <div class="header log-out">
        <a href="/home/signin">Log Out</a>
      </div>
    </div> 
    <!--  -->
<form:form action="" method="get" modelAttribute="space">
    <div class="w3-content-width w3-sections">
      <!-- <img class="mySlides" src="../WEB-INF/views/images/Appartment.jpg" style="width:100%">
      <img class="mySlides" src="../WEB-INF/views/images/Land.jpg" style="width:100%">
      <img class="mySlides" src="../WEB-INF/views/images/PG.jpg" style="width:100%">
      <img class="mySlides" src="../WEB-INF/views/images/Real Estate.jpg" style="width:100%"> -->
            <img class="mySlides" src="data:image/jpeg;base64,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" style="width:100%">
            <img class="mySlides" src="data:image/jpeg;base64,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" style="width:100%">
            <img class="mySlides" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfWW4iyeZUNCDxtxcxjxLsWMyhJRngji9vog&usqp=CAU" style="width:100%">
            <img class="mySlides" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5JXS1IqEdO-WrskVosrwACeTgS-Wv8oHdxw&usqp=CAU" style="width:100%">
      
    </div>
    </form:form>
    <script>
      var myIndex = 0;
      carousel();
      function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
          x[i].style.display = "none";  
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}    
        x[myIndex-1].style.display = "block";  
        setTimeout(carousel, 1400); // Change image every 1.4 seconds
      }
    </script>
<!--  -->
     
</body>
</html>