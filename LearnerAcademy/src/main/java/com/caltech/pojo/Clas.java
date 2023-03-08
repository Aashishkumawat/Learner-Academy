package com.caltech.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Clas {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private String id;
private String cname;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}

}
