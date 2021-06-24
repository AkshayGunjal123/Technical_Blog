package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import helper.ConnectionProvider;
import dao.UserDao;
import entities.Message;
import entities.User;
import java.io.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
@MultipartConfig
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
	  	
	 	
	 	//fetch username and password from user
		String username=request.getParameter("username");
		String password=request.getParameter("password");
        //System.out.println(username+" "+password);
		
		UserDao ud=new UserDao(ConnectionProvider.setConnection());
		User user=ud.getEmailAndPassword(username, password);
        
		if(user==null){
        	//p.println("<h2>Invalid Details..Try Again</h2>");
          Message msg=new Message("Invalid Details..Try Again","error","alert-danger");
          HttpSession s1=request.getSession();
          s1.setAttribute("msg", msg);
          response.sendRedirect("LoginPage.jsp");         
        }
        else{
        	HttpSession s=request.getSession();
        	s.setAttribute("currentUser", user);
            response.sendRedirect("Profile.jsp");
        }
        
        
	}

}
