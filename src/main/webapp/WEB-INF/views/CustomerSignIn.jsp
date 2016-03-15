<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- index.html -->
<html>
<head>
  <title>Online Store | Sing In</title>

  <!-- LOAD BOOTSTRAP CSS -->
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">

  <!-- LOAD JQUERY -->
    <!-- when building an angular app, you generally DO NOT want to use jquery -->
    <!-- we are breaking this rule here because jQuery's $.param will help us send data to our PHP script so that PHP can recognize it -->
    <!-- this is jQuery's only use. avoid it in Angular apps and if anyone has tips on how to send data to a PHP script w/o jQuery, please state it in the comments -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

  <!-- PROCESS FORM WITH AJAX (OLD) -->
  <script>
    <!-- WE WILL PROCESS OUR FORM HERE -->
  </script>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-sm-4">

  <!-- PAGE TITLE -->
  <div>
    <h2> RETURN CUSTOMERS </h2>
  </div>

  <!-- SHOW ERROR/SUCCESS MESSAGES -->
  <div id="messages"></div>

  <!-- FORM -->
  <form>
    <!-- NAME -->
    <div id="name-group" class="form-group">
      <label>Username</label>
      <input type="text" name="name" class="form-control" placeholder="Username">
      <span class="help-block"></span>
    </div>

    <!-- SUPERHERO NAME -->
    <div id="superhero-group" class="form-group">
      <label>Password</label>
      <input type="password" name="superheroAlias" class="form-control" placeholder="Password">
      <span class="help-block"></span>
    </div>
       <!-- SUBMIT BUTTON -->
    <button type="submit" class="btn btn-success btn-lg btn-block">
      <span class="glyphicon glyphicon-flash"></span> Login
    </button>
  </form>

</div>

<div class="col-sm-4" align="center">
<div>
    <h2> CREATE ACCOUNT</h2>
    <p> 
    Check out fast and secure, see your purchase history, <br>
    and customize your experience.
    </p>
</div>
<a href="#/signup" class="btn btn-info" role="button">Get Started</a>

</div>
</div>
</div>
</body>
</html>