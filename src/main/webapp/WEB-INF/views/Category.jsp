<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html  ng-app="myApp" class="ng-cloak">
  <head>  
    <title>Online Store </title>  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
 
      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }
 
    </style>  -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
        <style>
            html, body, input, select, textarea
            {
                font-size: 1.05em !important;
            }
        </style>
    
     <link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
  </head>
  <body ng-controller='HomeController'>
  
  
        <header>
        <!-- 
			<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"> Online Store</a>
				</div>
               
				<ul class="nav navbar-nav navbar-right">
				<li><a href="#/cat/pants"><i></i> Pants </a>
				<li><a href="#/cat/shirts"><i></i> Shirts </a>
				<li><a href="#/cat/dresses"><i></i> Dresses </a>
				<li><a href="#/cart"><i class="fa fa-home"></i> Cart </a></li>
                </ul>
			</div>
			</nav>
			 -->
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Online Store</a>
    </div>
    <ul class="nav navbar-nav">
      
      <li><a href="#/cat/pants"><i></i><b> Pants</b> </a></li>
      <li><a href="#/cat/shirts"><i></i> Shirts </a></li> 
      <li><a href="#/cat/dresses"><i></i> Dresses </a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#/cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart({{ cartSize || 0 }}) </a></li>
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
			 
			 
		</header>
		   <!-- 
		 <img class="img-responsive" src="<c:url value='/resources/images/{{image}}.jpg'/>" ng-show={{showTower}} style="margin:5px;width:1200px;height:500px;">
       
     
		<img src="<c:url value='/resources/images/tower.jpg' />" alt="Mountain View" style="margin:5px;width:1200px;height:500px;">
		
		<img ng-src="{{image[0].src}}"/>
		 -->
		
		<div class="container-fluid">

        <div ng-view> </div>
		</div>
 
       
      <!-- script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script -->
        <script src="//code.angularjs.org/1.3.0-rc.2/angular.min.js"></script>
        <script src="//code.angularjs.org/1.3.0-rc.2/angular-route.min.js"></script>
        <script src="//code.angularjs.org/1.3.0-rc.2/angular-resource.min.js"></script>
      <script src="<c:url value='/resources/js/app.js' />"></script>
      <script src="<c:url value='/resources/js/service/storeServices.js' />"></script>
      <!-- script src="<c:url value='/resources/js/controller/StoreController.js' />"></script-->
  </body>
</html>