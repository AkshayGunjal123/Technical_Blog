package entities;

import java.sql.*;

public class Post {
 private int pid;
 private String pTitle;
 private String pContent;
 private String pCode;
 private String pPics;
 private Timestamp pDate;
 private int cid;
 private int user_id;
public Post(int pid, String pTitle, String pContent, String pCode, String pPics, Timestamp pDate, int cid) {
	super();
	this.pid = pid;
	this.pTitle = pTitle;
	this.pContent = pContent;
	this.pCode = pCode;
	this.pPics = pPics;
	this.pDate = pDate;
	this.cid = cid;
}
public Post(int pid, String pTitle, String pContent, String pCode, String pPics, Timestamp pDate, int cid,
		int user_id) {
	super();
	this.pid = pid;
	this.pTitle = pTitle;
	this.pContent = pContent;
	this.pCode = pCode;
	this.pPics = pPics;
	this.pDate = pDate;
	this.cid = cid;
	this.user_id = user_id;
}
public Post(String pTitle, String pContent, String pCode, String pPics, Timestamp pDate, int cid, int user_id) {
	super();
	this.pTitle = pTitle;
	this.pContent = pContent;
	this.pCode = pCode;
	this.pPics = pPics;
	this.pDate = pDate;
	this.cid = cid;
	this.user_id = user_id;
}
public Post() {
	super();
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getpTitle() {
	return pTitle;
}
public void setpTitle(String pTitle) {
	this.pTitle = pTitle;
}
public String getpContent() {
	return pContent;
}
public void setpContent(String pContent) {
	this.pContent = pContent;
}
public String getpCode() {
	return pCode;
}
public void setpCode(String pCode) {
	this.pCode = pCode;
}
public String getpPics() {
	return pPics;
}
public void setpPics(String pPics) {
	this.pPics = pPics;
}
public Timestamp getpDate() {
	return pDate;
}
public void setpDate(Timestamp pDate) {
	this.pDate = pDate;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}


}
