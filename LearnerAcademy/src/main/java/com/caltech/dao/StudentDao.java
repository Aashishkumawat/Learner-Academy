package com.caltech.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Student;
import com.caltech.pojo.Teacher;

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
	
	
	public int edits(Student student) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Student stu1=new Student();
		stu1.setFname(student.getFname());
		stu1.setLname(student.getLname());
		stu1.setAddress(student.getAddress());
		student.setPhno(student.getPhno());
		student.setDateofbirth(student.getDateofbirth());
		session.saveOrUpdate(stu1);
		trans.commit();
		session.close();
		return 0;
	
	}
	
	public int delete(Student student) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query q=session.createQuery("delete from Student where sid=5");
		Student s=new Student();
		s.setSid(5);
		q.setParameter("id",s.getSid());
		if(q.executeUpdate()>0) {
			System.out.println("deleted");
		}
		trans.commit();
		session.close();
		return 0;
	}
}
