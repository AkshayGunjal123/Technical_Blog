package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import entities.*;
import dao.*;
import helper.*;
/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
@MultipartConfig
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		doGet(request, response);
	   PrintWriter p=response.getWriter();
       response.setContentType("text/html");
	   String email=request.getParameter("email");
       String name=request.getParameter("name");
       String status=request.getParameter("status");
       String pass=request.getParameter("pass");
       Part part = request.getPart("image");
       String imageName=part.getSubmittedFileName();
       
       //get The User from the Session
       HttpSession s=request.getSession();
       User user=(User)s.getAttribute("currentUser");      
       user.setEmail(email);
       user.setUser(name);
       user.setPassword(pass);
       user.setAbout(status);
       //String old=user.getProfile();
       user.setProfile(imageName);
       
       //Updation
       
       UserDao ud=new UserDao(ConnectionProvider.setConnection());
       boolean f=ud.updateUser(user);
   
       if(f){
    	   Message msg=new Message("Profile Updated..","success","alert-success");    
    	   s.setAttribute("msg", msg);
  	       response.sendRedirect("Profile.jsp");
       }
       else {
    	   Message msg=new Message("Something Feilds Miss","error","alert-success");
           s.setAttribute("msg", msg);
    	   response.sendRedirect("Profile.jsp");
       }
       
       
       /*   
       String newPath=request.getRealPath("/") + "Image" + File.separator + user.getProfile();
	   String oldPath=request.getRealPath("/") + "Image" + File.separator + old;
	   FileOperation.deleteFile(oldPath);
       
	   boolean f1=FileOperation.saveFile(part.getInputStream(), newPath);
       HttpSession s1=request.getSession();
    	 if(f1) {
    		 p.println("<h1>User Updated</h1>");
    		 Message msg=new Message("Profile Updated..","success","alert-success");
             s1.setAttribute("msg", msg);
    	     response.sendRedirect("Profile.jsp");
    	   }
    	   else {
    		   Message msg=new Message("Something Went Wrong","error","alert-danger");
    	       s1.setAttribute("msg", msg);
    	       response.sendRedirect("Profile.jsp");
    	   }
   */ 	             
       }   
    
}
