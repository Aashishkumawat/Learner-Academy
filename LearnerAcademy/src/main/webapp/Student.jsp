<%@page import="com.caltech.dao.StudentDao"%>
<%@page import="com.caltech.pojo.Student"%>
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
<form action="addstudent.jsp">
<input type="submit" value="Add Student">
<br>
<br>
<table border="1">
<tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Address</th><th>Phone No</th><th>Date of Birth</th><th>Edit Action</th><th>Delete Action</th>
<%StudentDao dao=new StudentDao();
List<Student> list=dao.display();
for(Student s:list){
%>
<tr><td><%=s.getSid() %></td><td><%=s.getFname() %></td><td><%=s.getLname() %></td><td><%=s.getAddress() %></td><td><%=s.getPhno() %></td><td><%=s.getDateofbirth() %></td><td><a href="edits.jsp">Edit</a></td><td><a href="deletes.jsp">Delete</a></td>
<%} %>
</table>
</form>
</body>
</html>