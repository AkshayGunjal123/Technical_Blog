package dao;
import java.sql.*;

import org.apache.jasper.tagplugins.jstl.core.Set;

import entities.User;
public class UserDao {
 private Connection con;

public UserDao(Connection con) {
	super();
	this.con = con;
}

 //method to insert user to data base 
public boolean saveUser(User user) {
	
    boolean f=false;
	try {
		
	  String sql="insert into User(email,uname,password,gender,about) values(?,?,?,?,?)"; 
	  PreparedStatement ps=this.con.prepareStatement(sql);
	  ps.setString(1, user.getEmail());
	  ps.setString(2, user.getUser());
	  ps.setString(3, user.getPassword());
	  ps.setString(4, user.getGender());
	  ps.setString(5, user.getAbout());
	  
	  ps.executeUpdate();
	  f=true;
  }
  catch(Exception e) {
	  e.printStackTrace();
  }
	return f;
 } 


//Get User Email and Password
 public User getEmailAndPassword(String email,String password){
	 User user=null;
	 
	 try {
		String sql="select * from user where email=? and password=?"; 
	    PreparedStatement ps=con.prepareStatement(sql);
	    ps.setString(1, email);
	    ps.setString(2, password);
	    ResultSet rs=ps.executeQuery();
	    if(rs.next()){
	    	
	      user=new User();
	      String email1=rs.getString("email");
	      user.setId(rs.getInt("id"));
	      user.setEmail(email1);
	      user.setUser(rs.getString("uname"));
	      user.setPassword(rs.getString("password"));
	      user.setGender(rs.getString("gender"));
	      user.setAbout(rs.getString("about"));
	      user.setProfile(rs.getString("profile"));
	      user.setTimestamp(rs.getTimestamp("Date1").toString());
	    } 
	 }
	 catch(Exception e){
		e.printStackTrace();
	 }
	 return user; 
 }
 
 public boolean updateUser(User user){
	boolean f=false;
	 try {
	 String sql="update user SET email=?,uname=?,password=?,about=?,profile=? where id=?";
	 PreparedStatement ps=con.prepareStatement(sql);
	 ps.setString(1,user.getEmail());
	 ps.setString(2,user.getUser());
	 ps.setString(3, user.getPassword());
	 ps.setString(4,user.getAbout());
	 ps.setString(5,user.getProfile());
	 ps.setInt(6, user.getId());
	 ps.executeUpdate();
	 f=true;
	}
  catch(Exception e){
	  e.printStackTrace();
  }	
	 return f;
 }
 
}
