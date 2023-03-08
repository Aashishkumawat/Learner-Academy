package com.caltech.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Subject;

public class SubjectDao {
	
	public int addsubject(Subject subject) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Subject sub=new Subject();
		sub.setSubid(subject.getSubid());
		sub.setSubname(subject.getSubname());
		int value=(Integer) session.save(sub);
		trans.commit();
		session.close();
		return value;
	}
	
	public List<Subject> display(){
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Subject");
		List<Subject> list=query.list();
		trans.commit();
		session.close();
		return list;
	}
	
}
