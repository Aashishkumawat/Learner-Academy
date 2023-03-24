<%@page import="com.caltech.pojo.Teacher"%>
<%@page import="com.caltech.dao.TeacherDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%TeacherDao dao=new TeacherDao();
Teacher teacher=new Teacher();
teacher.setTid(Integer.parseInt(request.getParameter("tid")));
teacher.setTname(request.getParameter("tname"));
int row=dao.editt(teacher);
if(row>0){
response.sendRedirect("Teacher.jsp");
}
else{
	response.sendRedirect("fail.jsp");
	
}
%>
</body>
</html>