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
<a href="Class.jsp">Class</a>
<a href="Student.jsp">Student</a>
<a href="Subject.jsp">Subject</a>
<a href="Teacher.jsp">Teacher</a>
<a href="Logout.jsp">Logout</a>
<br>
<br>
<form action="addsubject.jsp">
<input type="submit" value="Add subject">
<br>
<br>
<table border="1">
<tr><th>ID</th><th>Subject Name</th><th>Edit Action</th><th>Delete Action</th></tr>
<%SubjectDao dao=new SubjectDao();
List<Subject> list=dao.display();
for(Subject b:list){
%>
<tr><td><%=b.getSubid() %></td><td><%=b.getSubname() %></td><td><a href="editsub.jsp">Edit</a></td><td><a href="deletesub.jsp">Delete</a></td></tr>
<%} %>
</table>
</form>
</body>
</html>