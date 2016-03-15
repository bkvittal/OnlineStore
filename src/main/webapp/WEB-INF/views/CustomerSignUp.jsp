<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- index.html -->
<html>
<head>
  <title>Online Store | Create Account</title>

  <!-- LOAD BOOTSTRAP CSS -->
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">

  <!-- LOAD JQUERY -->
    <!-- when building an angular app, you generally DO NOT want to use jquery -->
    <!-- we are breaking this rule here because jQuery's $.param will help us send data to our PHP script so that PHP can recognize it -->
    <!-- this is jQuery's only use. avoid it in Angular apps and if anyone has tips on how to send data to a PHP script w/o jQuery, please state it in the comments -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

</head>
<body>
<div class="container">



  <div class="page-header">
    <h1><span class="glyphicon glyphicon-tower"></span><small>  Create Account </small> </h1>
  </div>

  <!-- SHOW ERROR/SUCCESS MESSAGES -->
  <div id="messages"></div>


  <form ng-submit="createCustomer()" name="customerForm" class="form-horizontal">
   
    <div class=row>
    <input type="hidden" ng-model="customer.id"/>
    <div class="form-group col-md-4">
      <label>First Name</label>
      <input type="text" class="form-control" placeholder="First Name" ng-model="customer.firstName">
     </div>
</div>
   <div class=row>
    <div class="form-group col-md-4">
      <label>Last Name</label>
      <input type="text" class="form-control" placeholder="Last Name" ng-model="customer.lastName">
    </div>
    </div>
    
    <div class="row">
    <div class="form-group col-md-4">
      <label>Email</label>
      <input type="text" class="form-control" placeholder="Email" ng-model="customer.email">
    </div>
    </div>
    
    
    <div class="row">
    <div class="form-group col-md-4">
      <label>Phone Number</label>
      <input type="text" class="form-control" placeholder="Phone Number" ng-model="customer.phoneNumber">
    </div>
    </div>
    <div class="row">
    <div class="form-group col-md-4">
      <label>User name</label>
      <input type="text" class="form-control" placeholder="User name" ng-model="customer.userName">
    </div>
    </div>

    <div class="row">
    <div class="form-group col-md-4">
      <label>Password</label>
      <input type="text" class="form-control" placeholder="Password" ng-model="customer.passWord">
   </div>
   </div>
   <div class=row> 
    <div class="form-group col-md-4">
      <label>Confirm Password</label>
      <input type="text" name="confirmPassword" class="form-control" placeholder="Confirm Password">
    </div>
    </div>

  
   <div class="row">
    <div class="form-group col-md-4">
      <label>Gender</label>
      <select class="form-control" class="form-control" placeholder="Select Gender" ng-model="customer.gender">
        <option>Select Gender</option>
        <option>Male</option>
        <option>Female</option>
       </select>
    </div>
    </div>
    <div class="row">
    <div class="form-group col-md-4">
    <button type="submit" class="btn btn-success btn-m btn-block">
      <span class="glyphicon glyphicon-flash"></span> Submit!
    </button>
    </div>
    </div>
  </form>

</div>

</body>
</html>