<%@page import="com.caltech.pojo.Student"%>
<%@page import="com.caltech.dao.StudentDao"%>
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
student.setSid(Integer.parseInt(request.getParameter("sid")));
int row=dao.delete(student);
if(row>0){
	response.sendRedirect("Class.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>