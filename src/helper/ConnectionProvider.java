package helper;
import java.sql.*;

public class ConnectionProvider {
 private static Connection con=null;
 public static Connection setConnection(){
	try { 
   
	if(con==null) {	
	 Class.forName("com.mysql.cj.jdbc.Driver");
     //System.out.println("2");
     String url="jdbc:mysql://localhost:3306/techblog?&serverTimezone=UTC";
     String user="TechBlog";
     String pass="TechBlog";
     con=DriverManager.getConnection(url, user, pass);
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return con;
 }
}
