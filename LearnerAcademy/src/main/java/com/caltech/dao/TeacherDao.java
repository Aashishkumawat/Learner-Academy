package com.caltech.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Teacher;

public class TeacherDao {
	
	public int addteacher(Teacher teacher) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Teacher tech=new Teacher();
		tech.setTid(teacher.getTid());
		tech.setTname(teacher.getTname());
		tech.setTdesignation(teacher.getTdesignation());
		int value=(Integer) session.save(tech);
		trans.commit();
		session.close();
		return value;
	}
	
	public List<Teacher> display(){
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Teacher");
		List<Teacher> list=query.list();
		trans.commit();
		session.close();
		return list;
	}
	
}
