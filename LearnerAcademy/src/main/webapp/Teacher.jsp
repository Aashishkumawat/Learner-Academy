<%@page import="com.caltech.dao.TeacherDao"%>
<%@page import="com.caltech.pojo.Teacher"%>
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
<form action="addteacher.jsp">
<input type="submit" value="Add teacher">
<br>
<br>
<table border="1">
<tr><th>ID</th><th>Teacher Name</th><th>Teacher Designation</th><th>Edit Action</th><th>Delete Action</th></tr>
<%TeacherDao dao=new TeacherDao();
List<Teacher> list=dao.display();
for(Teacher t:list){
%>
<tr><td><%=t.getTid() %></td><td><%=t.getTname() %></td><td><%=t.getTdesignation() %><td><a href="editt.jsp">Edit</a></td><td><a href="deletet.jsp">Delete</a></td></tr>
<%} %>
</table>
</form>
</body>
</html>