<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--Page Directive  -->   
<%@ page import="java.sql.*" import="helper.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/mystyle.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.bannner-background{
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 61% 100%, 26% 89%, 0 100%, 0 0);
}
</style>
</head>
<body>
  <!-- Navbar with include Directive -->
  <%@include file="Normal_Navbar.jsp" %>
  
  <!-- Banner with using Bootstrap-->
  <div class="container-fluid p-0 m-0">
   <div class="jumbotron primary-background text-white bannner-background">
   <div class="container">
    <h3 class="display-3">Welcome To TechBlog</h3>
    <h3>Programming Language</h3>
    <p>A programming language is a formal language, which comprises a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.
Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Early ones preceded the invention of the digital computer, the first probably being the automatic flute player described in the 9th century by the brothers Musa in Baghdad, during the Islamic Golden Age.[1] Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[2] The programs for these machines (such as a player piano's scrolls) did not produce different behavior in response to different inputs or conditions.</p>
  <a class="btn btn-outline-light btn-md"><span class="fa fa-user-plus"><span>Start it's face</a>
  <a href="LoginPage.jsp" class="btn btn-outline-light btn-md"><span class="fa fa-user-circle fa-spin"></span>Login</a>
   </div>
   </div>
  </div>
  <!-- Cards with Bootstrap -->
  <div class="container">
   <!-- Row First -->
   <div class="row mb-3">
    <!-- First Card -->
     <div class="col-md-4">
      <div class="card">
      <div class="card-body">
    <h5 class="card-title">Java Programming_Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Read more</a>
    </div>
   </div>
 </div>
 <!-- Second Card -->
 <div class="col-md-4">
      <div class="card">
      <div class="card-body">
    <h5 class="card-title">Data Structure</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
 </div>
 <!-- Card Third -->
 <div class="col-md-4">
      <div class="card">
      <div class="card-body">
    <h5 class="card-title">Compitative Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
     </div>    
 </div>
 
 <!-- Row Second -->
 <div class="row">
    <!-- First Card -->
     <div class="col-md-4">
      <div class="card">
      <div class="card-body">
    <h5 class="card-title">Java Programming_Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Read more</a>
    </div>
   </div>
 </div>
 <!-- Second Card -->
 <div class="col-md-4">
      <div class="card">
      <div class="card-body">
    <h5 class="card-title">Data Structure</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
 </div>
 <!-- Card Third -->
 <div class="col-md-4">
      <div class="card">
      <div class="card-body">
    <h5 class="card-title">Compitative Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
     </div>    
 </div>
</div>
  <!-- JavaScript -->   
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
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