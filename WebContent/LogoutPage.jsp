<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entities.*" import="javax.servlet.http.*" %>
<%
 HttpSession s=request.getSession();
 s.removeAttribute("currentUser"); 
 Message msg=new Message("Successfully Logout..","success","alert-success"); 
 //HttpSession s1=request.getSession();
 s.setAttribute("msg", msg);
 response.sendRedirect("LoginPage.jsp");  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="LoginServlet" method="post">
<input type="text" name="username"><br>
<input type="text" name="password"><br>
<input type="submit" value="submit">
</form>
</body>
</html>