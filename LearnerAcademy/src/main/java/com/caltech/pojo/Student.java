package com.caltech.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Student {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int sid;
private String fname;
private String lname;
private String address;
private int phno;
@Temporal(TemporalType.DATE)
private Date Dateofbirth;
private String cls;
public Date getDateofbirth() {
	return Dateofbirth;
}
public void setDateofbirth(Date dateofbirth) {
	Dateofbirth = dateofbirth;
}

public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getPhno() {
	return phno;
}
public void setPhno(int phno) {
	this.phno = phno;
}
public String getCls() {
	return cls;
}
public void setCls(String cls) {
	this.cls = cls;
}

}
