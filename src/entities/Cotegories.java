package entities;

public class Cotegories {
 private int cid;
 private String cname;
 private String description;
public Cotegories(int cid, String cname, String description) {
	super();
	this.cid = cid;
	this.cname = cname;
	this.description = description;
}
public Cotegories() {
	super();
}
public Cotegories(String cname, String description) {
	super();
	this.cname = cname;
	this.description = description;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
 
}
