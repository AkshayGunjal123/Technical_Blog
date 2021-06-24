package dao;
import java.sql.*;
import entities.*;
import java.util.*;

import entities.*;
public class PostDao {
 Connection con;
public PostDao(Connection con) {
	super();
	this.con = con;
}

//Get All Categories
 public ArrayList<Cotegories> getAllCategories()
 {
	 ArrayList<Cotegories> list=new ArrayList<Cotegories>();
	 Cotegories c=null;
	try {
		String sql="select * from categories";
		Statement st=this.con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		while(rs.next()){
			int cid=rs.getInt("cid");
			String cname=rs.getString("cname");
			String description=rs.getString("description");
		    System.out.println(cid+" "+cname+" "+description);
			c=new Cotegories(cid,cname,description);	
			list.add(c);
		}
	}	
	catch(Exception e){
		e.printStackTrace();
	}
	return list;
 }
 
 //Get All Posts
 public List<Post> getAllPosts(){
	 List<Post> list=new ArrayList<Post>();
	 
	 try{
		  String sql="select * from post order by pid desc";
		  PreparedStatement ps=con.prepareStatement(sql);
		  ResultSet rs=ps.executeQuery();
		 while(rs.next()){
			int pid=rs.getInt("pid");
			String pTitle=rs.getString("pTitle");
			//System.out.println("Post pTitle:"+pTitle);
			String pContent=rs.getString("pContent");
			//System.out.println("Post pContent:"+pContent);
			String pCode=rs.getString("pCode");
		    String pPics=rs.getString("pPics");
		    Timestamp pDate=rs.getTimestamp("pDate");
		    int cid=rs.getInt("cid");
		    int user_id=rs.getInt("user_id");
		    Post p=new Post(pid,pTitle,pContent,pCode,pPics,pDate,cid,user_id);
		    list.add(p); 
		 }
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	 return list;
 }
 
 //Get Post By By
 public List<Post> getPostById(int cat_id){
	 List<Post> list=new ArrayList<Post>();
	 try{
		 String sql="select * from post where cid=?";
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setInt(1, cat_id);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next()){ 
			int pid=rs.getInt("pid");
			String pTitle=rs.getString("pTitle");
			String pContent=rs.getString("pContent");
			String pCode=rs.getString("pCode");
		    String pPics=rs.getString("pPics");
		    Timestamp pDate=rs.getTimestamp("pDate");
		    int user_id=rs.getInt("user_id");
		    Post p=new Post(pid,pTitle,pContent,pCode,pPics,pDate,user_id);
		    list.add(p); 
		 }
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 } 
	 return list;
 }
 
 
 //Save Post 
 
 public boolean savePost(Post p){
	 boolean f=false;
	 try {
		 String sql="insert into post(pTitle,pContent,pCode,pPics,cid,user_id) values(?,?,?,?,?,?)";
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setString(1,p.getpTitle());
		 ps.setNString(2,p.getpContent());
		 ps.setString(3,p.getpCode());
		 ps.setString(4,p.getpPics());
		 ps.setInt(5,p.getCid());
		 ps.setInt(6,p.getUser_id());
		 ps.executeUpdate();
		 f=true;
	 }
	 catch(Exception e){
		 e.printStackTrace();
	 }
	 return f;
 }
 
}
