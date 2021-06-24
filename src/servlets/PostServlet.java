package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import helper.ConnectionProvider;
import dao.PostDao;
import dao.UserDao;
import entities.Message;
import entities.Post;
import entities.User;
import java.io.*;
import java.sql.Timestamp;

/**
 * Servlet implementation class PostServlet
 */
@WebServlet("/PostServlet")
@MultipartConfig
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostServlet() {
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
		//fetch Data from Profile of Post Table Data
	 	int cid=Integer.parseInt(request.getParameter("cid"));
	 	String pTitle=request.getParameter("pTitle");
	 	String pContent=request.getParameter("pContent");
	 	String pCode=request.getParameter("pCode");
	 	//Part part=request.getPart("pPics");
	 	//part.getSubmittedFileName();
	 	String pic="default.png";
	 	//p.println("<h1>"+cid+"  "+pTitle+" "+pContent+" "+pCode+"</h>");
	 	HttpSession session=request.getSession();
	 	User user=(User)session.getAttribute("currentUser");
	 	Post p1=new Post(pTitle,pContent,pCode,pic,null,cid,user.getId());
	    PostDao dao=new PostDao(ConnectionProvider.setConnection());
	    if(dao.savePost(p1)){
	    	//p.println("<h1>Successfully Has Posted...</h1>");
	    	Message msg=new Message("Successfully Posted..","success","alert-success"); 
	    	//HttpSession s1=request.getSession();
	    	session.setAttribute("msg", msg);
	    	response.sendRedirect("Profile.jsp");  
	    }
	    else{
	    	p.println("<h1>Something Went Wrong...</h1>");
	    }
	}

}
