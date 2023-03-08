<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.caltech.pojo.Student"%>
<%@page import="com.caltech.dao.StudentDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%StudentDao dao=new StudentDao();
Student student=new Student();
student.setFname(request.getParameter("fname"));
student.setLname(request.getParameter("lname"));
student.setAddress(request.getParameter("adrs"));
student.setPhno(Integer.parseInt(request.getParameter("phn")));
String pdate=request.getParameter("dob");
//convert string into a java date [yyyy-MM-dd]-mysql db date format
SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
Date date=dateFormat.parse(pdate);
student.setDateofbirth(date);
int row=dao.addstudent(student);
if(row>0){
	response.sendRedirect("Student.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>