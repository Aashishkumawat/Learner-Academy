<%@page import="com.caltech.dao.SubjectDao"%>
<%@page import="com.caltech.pojo.Subject"%>
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
<%SubjectDao dao=new SubjectDao();
Subject subject=new Subject();
subject.setSubid(Integer.parseInt(request.getParameter("subid")));
subject.setSubname(request.getParameter("subname"));
int row=dao.addsubject(subject);
if(row>0){
	response.sendRedirect("Subject.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>