package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.*;
import entities.User;
import dao.UserDao;
import helper.ConnectionProvider;
/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
@MultipartConfig
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
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
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        String gender=request.getParameter("gender");
        String about=request.getParameter("about");
        String check=request.getParameter("check");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        //System.out.println(email+" "+user+" "+pass+" "+gender+" "+about);
	    System.out.println("Check:"+check);
        System.out.println(username+" "+password);
	    
        if(check==null){
           p.println("<h1>Please Select Term And Condition</h1>");	
        }
        else{
      
         User u=new User(email,user,pass,gender,about);          
         UserDao ud=new UserDao(ConnectionProvider.setConnection());
         if(ud.saveUser(u)){
        	p.println("<h1>Successfully Registration Done..<h1>");
         }
         else {
        	 p.println("<h1>Something Wrong..<h1>");
         }
         
        }
	}

}
