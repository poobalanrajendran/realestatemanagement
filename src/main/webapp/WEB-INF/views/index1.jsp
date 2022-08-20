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
      <a href="/home/about">About</a> 
      </div>
      <div class="header">
        <a href="">Contact</a>
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
<%--               <c:if test="${roles == 'Admin'}">  <a href="/payment/transactionDetails?userid=${userId}">Transcation</a> </c:if>    --%>     
                   <c:if test="${roles == 'Admin'}">  <a href="/payment/paymentlist">Transcation</a> </c:if>        
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
               <img class="mySlides" src="https://fiverr-res.cloudinary.com/t_main1,q_auto,f_auto/gigs/114347839/original/447210417fa6ce483544c53f57e611956f9b00b2.jpg" alt="" style="width:100%">
            <img class="mySlides" src="https://thinkrealty.com/wp-content/uploads/2020/09/iStock-840206042-rgb.jpg" alt="" style="width:100%">
            <img class="mySlides" src="https://thumbs.dreamstime.com/z/modern-real-estate-house-building-city-construction-concept-evening-outdoor-urban-view-homes-40083842.jpg" alt="" style="width:100%">
            <img class="mySlides" src="https://5.imimg.com/data5/OU/ED/MY-44651033/paying-guest-renting-solutions-500x500.jpg" alt="" style="width:100%">
            
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