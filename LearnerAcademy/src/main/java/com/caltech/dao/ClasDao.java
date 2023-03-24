package com.caltech.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Clas;
import com.caltech.pojo.Teacher;

public class ClasDao {
	public int addclas(Clas clas) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Clas newclas=new Clas();
		newclas.setId(clas.getId());
		newclas.setCname(clas.getCname());
		int value=(Integer) session.save(newclas);
		trans.commit();
		session.close();
		return value;
	}
	
	public List<Clas> display(){
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Clas");
		List<Clas> list=query.list();
		trans.commit();
		session.close();
		return list;
	}
	
	public int editc(Clas clas) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Clas clas1=new Clas();
		clas1.setId(clas.getId());
		clas1.setCname(clas.getCname());
		session.saveOrUpdate(clas1);
		trans.commit();
		session.close();
		return 0;
	
	}
	
	public int delete(Clas clas) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query q=session.createQuery("delete from Clas where id=2");
		Clas c=new Clas();
		c.setId(2);
		q.setParameter("id",c.getId());
		if(q.executeUpdate()>0) {
			System.out.println("deleted");
		}
		trans.commit();
		session.close();
		return 0;
	}
}
