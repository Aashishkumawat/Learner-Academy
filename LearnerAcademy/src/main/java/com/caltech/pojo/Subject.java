package com.caltech.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Subject {
	@Id
private int subid;
private String subname;
public int getSubid() {
	return subid;
}
public void setSubid(int subid) {
	this.subid = subid;
}
public String getSubname() {
	return subname;
}
public void setSubname(String subname) {
	this.subname = subname;
}

}
