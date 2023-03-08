package com.caltech.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Student;

public class StudentDao {
	
	public int addstudent(Student student) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Student stu=new Student();
		stu.setSid(student.getSid());
		stu.setFname(student.getFname());
		stu.setLname(student.getLname());
		stu.setAddress(student.getAddress());
		stu.setPhno(student.getPhno());
		stu.setDateofbirth(student.getDateofbirth());
		stu.setCls(student.getCls());
		int value=(Integer) session.save(stu);
		trans.commit();
		session.close();
		return value;
	}
	
	public List<Student> display(){
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Student");
		List<Student> list=query.list();
		trans.commit();
		session.close();
		return list;
	}
}
