<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <div class="row">
  <!-- img class="img-responsive" width="460" height="345" --> 
  <div  ng-repeat="n in names">
  <img class="img-responsive" src="<c:url value='/resources/images/{{n.imagef}}.jpg'/>" style="margin:5px;width:200px;height:300px;">
  <div><b>{{n.name}}</b></div>
  <div>{{n.desc}}</div>
  <nav>
  <a href="#"><span class=""></span> {{ n.price | currency }}</a> |
  <a href="#/cart" ng-click='remCart(n)'> Remove</a>
  </nav>
  </div>
 </div>
 </div>

</body>
</html>