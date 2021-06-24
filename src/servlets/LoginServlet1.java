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
import javax.servlet.http.Part;

/**
 * Servlet implementation class LoginServlet1
 */
@WebServlet("/LoginServlet1")
@MultipartConfig
public class LoginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet1() {
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
		//fetch Data from Profile of Post Table Data
	 	String cid=request.getParameter("cid");
	 	String pTitle=request.getParameter("pTitle");
	 	String pContent=request.getParameter("pContent");
	 	String pCode=request.getParameter("pCode");
	 	HttpSession session=request.getSession();
	 	User user1=(User) session.getAttribute("currentUser");
	    Part part = request.getPart("pPics");
	    String pPics=part.getSubmittedFileName();
	 	System.out.println(cid+" "+pTitle+" "+pContent+" "+pPics+" "+pPics);
	}

}
