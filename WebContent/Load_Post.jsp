<%@ page import="dao.*,entities.*,helper.*,servlets.*" %>
<%@ page import="java.util.*" %>

<div class="row">
<%

Thread.sleep(200);
PostDao d=new PostDao(ConnectionProvider.setConnection());
int cid=Integer.parseInt(request.getParameter("cid"));
List <Post> post=null; 
if(cid==0){ //cid>0
    post = d.getAllPosts();
	//post = d.getPostById(cid);	   
}
 else{
    post = d.getPostById(cid);	  
	 //post = d.getAllPosts();
 }
if(post.size()==0)
{ out.println("<h3 class='display-3 text-center'>No Posts in this Category..</h3>"); return; }

for(Post p1:post){
	
 %>
<div class="col-md-6 mt-2">
  <div class="card" style="width: 18rem">
  <img class="card-img-top" src="default.png" alt="Card image cap">
    <div class="card-body">
      <b><%= p1.getpTitle() %> </b>
      <p><%= p1.getpContent() %> </p>
      <p><%= p1.getpCode() %> </p>
    </div>
  </div>
</div>
 <%	
}
%>
</div>