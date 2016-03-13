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

      
  <h4>{{type | uppercase}}</h4>
  <div class="container">
  <div class="row">
  
  <div class="col-xs-3" ng-repeat="n in names">
  <div>
  <img class="img-responsive" src="<c:url value='/resources/images/{{n.imagef}}.jpg'/>" style="margin:5px;width:200px;height:300px;" ng-click='addtocart(n)'>
  </div>
  
  <div><b>{{n.name}}</b></div>
  <div>{{n.desc}}</div>
  <a href="#"><span class=""></span> {{ n.price | currency }}</a>
  
<!-- 
  <div ng-init="imgsrc='<c:url value='/resources/images/{{n.imagef}}.jpg'/>'" ng-mouseover="imgsrc='<c:url value='/resources/images/{{n.imageb}}.jpg'/>'" ng-mouseout="imgsrc='<c:url value='/resources/images/{{n.imagef}}.jpg'/>'">
  <img ng-src="{{imgsrc}}"/>
  <div>{{n.name}}</div>
  <div>{{n.desc}}</div>  -->
</div>
  
  </div>
 </div>
 
 

</body>
</html>