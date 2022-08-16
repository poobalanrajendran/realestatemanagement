<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 <%-- <%@ include file="/WEB-INF/views/css/contacts.css"%>  --%>
@import url(https://fonts.googleapis.com/css?family=Lato:300,400,700);

// Color vars

$white: #fff;
$grey: #ccc;
$dark_grey: #555;
$blue: #4f6fad;
$pink: #ee9cb4;

// Mixins

@mixin lato-book { font-family: 'Lato', sans-serif; font-weight: 300; }
@mixin lato-reg { font-family: 'Lato', sans-serif; font-weight: 400; }
@mixin lato-bold { font-family: 'Lato', sans-serif; font-weight: 700; }
@mixin btn($color) {
  background-color: $color;
  border-bottom-color: darken($color, 15%);
  &:hover {
      background-color: lighten($color, 5%);
    }
}

// Functions

@function pxtoem($target, $context){
  @return ($target/$context)+0em;
}

//

body {
  background-color: lighten($grey, 10%);
  font-size: 100%;
  @include lato-reg;
}
div, textarea, input {
  @include box-sizing(border-box); 
}  
.container {  
  max-width: 510px;
  min-width: 324px;
  margin: 50px auto 0px;
  background-color: $white;
  border: 1px solid lighten($grey, 1%); 
  border-bottom: 3px solid $grey;
}
.row {
  width: 100%;
  margin: 0 0 1em 0;
  padding: 0 2.5em;
  &.header {
    padding: 1.5em 2.5em;
    border-bottom: 1px solid $grey; 
    background: url(https://images2.imgbox.com/a5/2e/m3lRbCCA_o.jpg) left -80px;
    color: $white;
  }
  &.body {
    padding: .5em 2.5em 1em;
  }
}
.pull-right {
  float: right; 
}
h1 {
  @include lato-book;
  display: inline-block;
  font-weight: 100;
  font-size: pxtoem(45, 16);
  border-bottom: 1px solid hsla(100%, 100%, 100%, 0.3);
  margin: 0 0 0.1em 0;
  padding: 0 0 0.4em 0;
}
h3 {
  @include lato-reg;
  font-size: pxtoem(20, 16);
  margin: 1em 0 0.4em 0;
}
.btn {
  font-size: pxtoem(17, 16);
  display: inline-block;
  padding: 0.74em 1.5em;
  margin: 1.5em 0 0;
  color: $white;
  border-width: 0 0 0 0;
  border-bottom: 5px solid;
  text-transform: uppercase;
  @include btn(darken($grey, 10%));
  @include lato-book;
  &.btn-submit {
    @include btn($blue);
  }
}

form {
  max-width: 100%;
  display: block;
  ul {
    margin: 0;
    padding: 0;
    list-style: none;
    li {
      margin: 0 0 0.25em 0; 
      clear: both;
      display: inline-block;
      width: 100%;
      &:last-child {
          margin: 0;    
        }
        p {
          margin: 0;
          padding: 0;
          float: left;
          &.right {
            float: right;
          }
        }     
        .divider {
          margin: 0.5em 0 0.5em 0;
          border: 0;
          height: 1px;
          width: 100%;
          display: block;
          background-color: $blue;
          background-image: linear-gradient(to right, $pink, $blue);
        }
        .req {
          color: $pink; 
        }
    }
  }
  label {
    display: block;
    margin: 0 0 0.5em 0;
    color: $blue;
    font-size: pxtoem(16, 16);
  }
  input {
    margin: 0 0 0.5em 0;
    border: 1px solid $grey;
    padding: 6px 10px;
    color: $dark_grey;
    font-size: pxtoem(16, 16);
  }
  textarea {
    border: 1px solid $grey;
    padding: 6px 10px;
    width: 100%;
    color: $dark_grey;
  }
  small {
    color: $blue;
    margin: 0 0 0 0.5em;
  }
}

// Media Queries

@media only screen and (max-width:480px) {
  .pull-right {
    float: none; 
  }
  input {
    width: 100%; 
  }
  label {
    width: 100%;
    display: inline-block;
    float: left;
    clear: both;
  }
  li, p {
   width: 100%; 
  }
  input.btn {
   margin: 1.5em 0 0.5em; 
  }
  h1 {
   font-size: pxtoem(36, 16); 
  }
  h3 {
    font-size: pxtoem(18, 16)
  }
  li small {
   display: none; 
  }
}
 /*  */
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
<!--  -->
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
        profiles
         </div>
        
          
              <div class="dropdown-2">
              
           <!--  <a href="#"> -->
            
              <c:if test="${roles == 'User'}">  
              <a href="/users/updateform?userid=${userId}"> updateProfile</a> </c:if>           
             <!--  </a> -->
              
              <!-- <a href="#"> -->
              <c:if test="${roles == 'User'}">  <a href="/payment/transactionDetails?userid=${userId}">Transcation</a> </c:if>        
           <!--  </a> -->
           
            <!-- <a href="# "> -->
              <c:if test="${roles == 'User'}">  <a href="/assest/userid?userid=${userId}">AssetPosted</a> </c:if>        
            <!-- </a> -->
            
            <!-- <a href="#"> -->
            
              <c:if test="${roles == 'Admin'}">  <a href="/users/updateform?userid=${userId}"> UpdateProfile</a> </c:if>           
              <!-- </a> -->
              
             <!--  <a href="#"> -->
              <c:if test="${roles == 'Admin'}">  <a href="/users/userslist"> AllUser</a> </c:if>           
             <!--  </a> -->
             
             <!--  <a href="#"> -->
              <c:if test="${roles == 'Admin'}">  <a href="/assest/getAllAsset">AssetPosted</a> </c:if>        
           <!--  </a> -->
           
           <!--  <a href="#"> -->
              <c:if test="${roles == 'Admin'}">  <a href="/payment/transactionDetails?userid=${userId}">Transcation</a> </c:if>        
           <!--  </a> -->
      
     
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
<div class="container">
  <div class="row header">
    <h1>CONTACT US &nbsp;</h1>
    <h3>Fill out the form below to learn more!</h3>
  </div>
  <div class="row body">
    
      <ul>
        
        <li>
          <p class="left">
            <label for="first_name">first name</label>
            <input type="text" name="first_name" placeholder="John" />
          </p>
          <p class="pull-right">
            <label for="last_name">last name</label>
            <input type="text" name="last_name" placeholder="Smith" />      
          </p>
        </li>
        
        <li>
          <p>
            <label for="email">email <span class="req">*</span></label>
            <input type="email" name="email" placeholder="john.smith@gmail.com" />
          </p>
        </li>        
         <li><div class="divider"></div></li>
        <li>
          <label for="comments">comments</label>
          <textarea cols="46" rows="3" name="comments"></textarea>
        </li>
        
        <li>
          <input class="btn btn-submit" type="submit" value="Submit" />
          <small>or press <strong>enter</strong></small>
        </li>
        
      </ul>
      
  </div>
</div>
</body>
</html>