<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*,entities.*,helper.*,servlets.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   PostDao pd=new PostDao(ConnectionProvider.setConnection());
   List<Post> p1=pd.getAllPosts();
   for(Post p2:p1){
   %> 
  <h3><%= p2.getpTitle() %></h3> 
  <h3><%= p2.getpContent() %></h3>  
  <% 
   }
  %>
</body>
</html>