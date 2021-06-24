<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entities.*" import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/mystyle.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login Page</title>
</head>
<body>
<!-- Navbar -->
<%@include file="Normal_Navbar.jsp" %>
<div class="d-flex align-items-center primary-background bannner-background" style="height: 70vh" >
 <div class="container">
  <div class="row">
   <div class="col-md-6 offset-3">
   
      <div class="card" >
        <div class="card-header  primary-background text-white text-center">
         <span class="fa fa-user-plus fa-2x">
         <h4>Login Here</h4></span>
        </div>
        
           <!-- Scriptlit tag -->
           <%
             Message m=(Message)session.getAttribute("msg");
             if(m != null)
              { 
            %>
            <div class="alert <%= m.getCssclass() %>" role="alert">
               <h2><%=  m.getContent() %></h2>
            </div>	
            <%
                  session.removeAttribute("msg");
               }
            %>
            

        <div class="card-body">
        
<form action="LoginServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="username" required class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
 <div class="container text-center"> 
  <button type="submit" class="btn btn-primary">Submit</button>
 </div>
</form>
        </div>
      </div>
   </div>
  </div>
 </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="JS/myjavascript.js"></script>
</body>
</html>