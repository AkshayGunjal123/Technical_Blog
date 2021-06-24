<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/mystyle.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>RagistrationPage</title>
</head>
<body>
<%@include file="Normal_Navbar.jsp" %>
<main class="primary-background p-3 bannner-background">
<div class="container">
 <div class="col-md-6 offset-md-4">
  <div class="card">
   <div class="card-header text-center primary-background ">
   <span class="fa fa-3x fa-user-circle"><h4>Registration Here</h4></span>
    </div>
   <div class="card-body">
   
 <form id="reg-form" action="RegistrationServlet" method="post">
   <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" required  class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">User Name</label>
    <input type="text" requred class="form-control" name="user" placeholder="Username">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" required class="form-control" name="pass" placeholder="Password">
  </div>
  
  <div class="form-group">
    <label for="Gender">Select Gender</label><br>
    <input type="radio" id="gender" name="gender">Male
     <input type="radio" id="gender" name="gender">Female
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1"></label>
    <textarea name="about" id="about" cols="60"  placeholder="Enter Something About Your Self..."></textarea>	

  </div>
  
  <div class="form-check">
    <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
  </div>
  <br>
  <div class="container text-center" id="loader" style="display:none"><span class="fa fa-refresh fa-spin fa-2x"></span>
      <h3>Please wait..</h3>
  </div>
 <div class="container text-center"> 
  <button type="submit" id="submit_btn" class="btn btn-primary">Submit</button>
 </div>
</form>

  </div>
 </div> 
</div>
</div>
</main>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="JS/jquery.js"></script>
<script src="JS/myjavascript.js"></script>

<!-- 
<script>
$(document).ready(function(){
    $("#submit_btn").click(function(){
    if($(this).html()=="show")
     {
      $(this).html("hide");
      $("#loader").show();
     }
     else
     {
     	$(this).html("show");
     	$("#loader").hide();
     }
    });
	});
</script>
-->
</body>
</html>