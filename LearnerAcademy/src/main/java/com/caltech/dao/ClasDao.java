package com.caltech.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Clas;

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
}
