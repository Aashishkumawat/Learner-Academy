package com.caltech.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Subject;
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
	
	public int editt(Teacher teacher) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Teacher tech1=new Teacher();
		teacher.setTid(teacher.getTid());
		teacher.setTname(teacher.getTname());
		session.saveOrUpdate(tech1);
		
		trans.commit();
		session.close();
		return 0;
	
	}
	
	public int delete(Teacher teacher) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query q=session.createQuery("delete from Teacher where tid=2");
		Teacher t=new Teacher();
		t.setTid(2);
		q.setParameter("id",t.getTid());
		if(q.executeUpdate()>0) {
			System.out.println("deleted");
		}
		trans.commit();
		session.close();
		return 0;
	}
}
