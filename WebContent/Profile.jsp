<%@ page import="entities.User" import="javax.servlet.http.*" %>
<%@ page errorPage="ErrorPage.jsp" %>
<%
 User user=(User)session.getAttribute("currentUser");
 if(user==null){
	response.sendRedirect("LoginPage.jsp");
 }
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="entities.*,dao.*,helper.*,servlets.*" import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/mystyle.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
</head>
<body>

 <!--Start Navbar -->
 <nav class="navbar navbar-expand-lg navbar-dark primary-background">
<a class="navbar-brand" href="Home.jsp"><span class="fa fa-asterisk"></span>TechBlog</a>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
	 <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-bell-o"></span>LearnCode <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item dropdown nav-item active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <span class="fa fa-check-square-o"></span> COTEGORIES
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Programming Language</a>
          <a class="dropdown-item" href="#">DataStructure</a>
          <div class="dropdown-divider"></div>
		  <a class="dropdown-item" href="#">Project Implementation</a>
      </div>
      </li>
	   <li class="nav-item nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-address-card"></span>Contact</a>
      </li>
      <li class="nav-item nav-item active">
        <a class="nav-link" data-toggle="modal" data-target="#dopost-model" href="#"><span class="fa fa-file-text-o"></span>DoPost</a>
      </li>
    </ul>
    <ul class="navbar-nav mr-right">
     <li class="nav-item active">
        <a class="nav-link" href="" data-toggle="modal" data-target="#profile-model"><span class="fa fa-user-circle"></span><%= user.getUser() %> </a>
      </li>

      <li class="nav-item active">
        <a class="nav-link" href="LogoutPage.jsp"><span class="fa fa-user-circle fa-spin"></span>Logout</span></a>
      </li>
    </ul>
  </div>
</nav>
<!-- End Of Navbar -->


<!-- Main Body Of The Page -->

<main>
 <div class="container">
   <div class="row mt-4">
   
     <!-- First Col -->
     <div class="col-md-4">
     <!-- Categories -->
     <div class="list-group">
        <a href="#" onclick="getPosts(0,this)" class="c-link list-group-item list-group-item-action active">
         All Posts
        </a>
        <%
         PostDao p=new PostDao(ConnectionProvider.setConnection());
            ArrayList<Cotegories> list1=p.getAllCategories();
            for(Cotegories c:list1){
            	%>
            <a href="#" onclick="getPosts(<%= c.getCid() %>,this)" class="c-link list-group-item list-group-item-action"><%= c.getCname() %></a> 
          <%  	
            }
        %>
      
     </div>
     </div>
     
     <!-- Second Col -->
     <div class="col-md-8" >
         <!-- Posts -->
         <div class="container text-center" id="loader">
          <i class="fa fa-refresh fa-4x text-center fa-spin"> </i>
          <h3 class="mt-2">Loading....</h3>
         </div>
         
         <div class="container-fluid" id="post-container">
          
         </div>
     </div>
     
   </div>
 </div>
</main>

<!-- End Main Body Of The -->

<!-- Profile Model -->

<!-- Modal -->
<div class="modal fade" id="profile-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="container text-center">
       <h5>
        <img src="Pics/<%= user.getProfile() %>"><br>
       <%= user.getUser() %> <br>
        </h5>
<div id="table1"> 
 <table class="table">
   <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Email</th>
      <th scope="col">Status</th>
      <th scope="col">RegistrationDate</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><%= user.getId() %></th>
      <td scope="row"><%= user.getEmail() %></td>
      <td scope="row"><%= user.getAbout() %></td>
      <th scope="row"><%= user.getTimestamp() %></th>    
     </tr>
  </tbody>
</table>
</div>

<div id="profile1" style="display:none;">
 <h5 class="mt-2">Edit Carefully....</h5>
 
<form action="EditServlet" method="post" enctype="multipart/form-data">
<table class="table">
   <thead>
    <tr>
      <th>ID</th>
      <th><%= user.getId() %></th>
    </tr>
    <tr> 
      <th>Email</th>
      <td ><input class="form-control" type="text" name="email" value="<%= user.getEmail() %>"> </td>
    </tr>
     <tr> 
      <th>Name:</th>
      <td ><input class="form-control" type="text" name="name" value="<%= user.getUser() %>"> </td>
    </tr>
    <tr>
      <th>Password:</th>
      <td ><input class="form-control" type="text" name="pass" value="<%= user.getPassword() %>"> </td>
    </tr>
    <tr> 
      <th>Status</th>
      <td>	
      <textarea class="form-control" name="status"><%= user.getAbout() %></textarea>
      </td>
    </tr>
    <tr>
      <th>Profile:</th>
      <td ><input type="file" name="image"  class="form-control"></td>
    </tr>   
</table>
 <div class="container"><button type="submit" class="btn btn-outline-primary">Save</button> </div>
 </form>
</div>
      </div>  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="edit1" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>
<!-- End Profile Model -->


<!-- Post Model -->

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="dopost-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Provides the post detail</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      
      <div class="modal-body">
      
        <form action="PostServlet" id="add-post-form" method="post">
            <div class=form-group>
                <select class="form-control" name="cid">
                   <option selected disabled>--Select Categories--</option>
                   <%
                     PostDao postdao=new PostDao(ConnectionProvider.setConnection());
                     ArrayList<Cotegories> list2 = postdao.getAllCategories();
                     for(Cotegories c:list2){
                    	 %>
                    	 <option value="<%= c.getCid()  %>"><%= c.getCname() %></option>
                  <%  	 
                     }
                   %>
                 <!--   
                   <option>Technology</option>
                   <option>Programming</option>
                   <option>Politics</option>
                   <option>Social</option>
                   <option>Education</option>
                   <option>Bollywood</option>
                 -->
                </select>
            </div>
            <div class="form-group">
              <input type="text" name="pTitle" placeholder="Enter Post Title" class="form-control">
            </div>
            <div class="form-group">
              <textarea name="pContent" class="form-control" rows="" cols="" style="height:90px;" placeholder="Enter Your Content"></textarea>
            </div>
            <div class="form-group">
              <textarea name="pCode" class="form-control" rows="" cols="" style="height:90px;" placeholder="Enter Your Code"></textarea>
            </div>
          <!--   
           <div class="form-group">
           <label>Select_File:</label>
             <input type="file" name="pPics" class="from-control">
            </div> 
          -->
            <div class="container text-center">
              <button type="submit" class="btn btn-outline-primary">Post</button>
            </div>
      
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- Scriptlit tag -->
           <%
             Message m=(Message)session.getAttribute("msg");
             if(m != null)
              { 
            %>
                <script>
                    swal("Good job!", "Successfully Done..", "success");               	
               </script>         
          
            <%
                  session.removeAttribute("msg");
               }
           %>            
<!-- End Post Model -->


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="JS/myjavascript.js"></script>
<script src="JS/jquery.js"></script>


<script>
  $(document).ready(function(){
	 let editStatus=false;
    	 
	 $('#edit1').click(function(){
	  if(editStatus==false){
		 $('#table1').hide();
		$(this).text("Back");
		$('#profile1').show();
	    editStatus=true;
	  }
	  else{ 
		$('#profile1').hide();
		$(this).text('Edit');
		$('#table1').show();
		editStatus=false;
	  }
	  }) 
  })
</script> 


<!-- Loading Post using Ajax -->
<script>
 function getPosts(cat_id,temp) {
	 
   $(document).ready(function(e){
	  //alert("Alert");
	  $('#loader').show();
	  $('#post-container').hide();
	  $('.c-link').removeClass('active')

	  $.ajax({
    	 url:"Load_Post.jsp",
    	 data:{cid:cat_id},
    	 success:function(data,textStatus,jqXHR){
    	   console.log(data);	
    	   $('#loader').hide();
    	   $('#post-container').show();
    	   $('#post-container').html(data);
    	   $(temp).addClass('active')
       }
    	 
     })
     
   })
   
 }
 
 $(document).ready(function(e){
	 let allPostRef=$('.c-link')[0];
	 getPosts(0,allPostRef)
 })
</script>
<!-- End Loding Post -->


<!-- Add-Post-Form -->
 <!-- 
 <script type="text/javascript">
 $(document).ready(function(){
	// alert("alert box....");
    $("#add-post-form").on("submit",function(event){
    	//this code gets called when form is submiited
    	event.preventDefault();
    	console.log("Submitted...");
    	let from = new FormData(this);
    	
    	//now rquesting to server
    	$.ajax({
    		url: "PostServlet",
    		type: 'post',
    		data: from,
    		success: function (data, textStatus, jqXHR){
    			
    		},
    		error:function (jqXHR, textStatus, errorThrown){
    			
    		},
    		processData: false,
    		contentType: false
    	});
    })
 })
 </script>
 -->
<!-- End Add-Post-Form -->

</body>
</html>