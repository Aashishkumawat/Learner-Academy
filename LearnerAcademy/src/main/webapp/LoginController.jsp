<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.caltech.pojo.User" %>
    <%@page import="com.caltech.dao.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%User user=new User();
UserDao dao=new UserDao();
user.setUser(request.getParameter("user"));
user.setPassword(request.getParameter("pwd"));
User newuser=dao.validateuser(user);
if(newuser!=null){
	session.setAttribute("user",newuser);
	response.sendRedirect("Dashboard.jsp");
}
%>
</body>
</html>
