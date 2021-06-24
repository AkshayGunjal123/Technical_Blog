package entities;
import java.sql.*;
public class User {
	private int id;
	private String email;
	private String user;
	private String password;
	private String gender;
	private String about;
	private String timestamp;
	private String profile;
	
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	public User(int id, String email, String user, String password, String gender, String about, String timestamp) {
		super();
		this.id = id;
		this.email = email;
		this.user = user;
		this.password = password;
		this.gender = gender;
		this.about = about;
	}
	public User(String email, String user, String password, String gender, String about) {
		super();
		this.email = email;
		this.user = user;
		this.password = password;
		this.gender = gender;
		this.about = about;
		this.timestamp = timestamp;
	}
	public User() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	
}
