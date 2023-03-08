<%@page import="com.caltech.dao.ClasDao"%>
<%@page import="com.caltech.pojo.Clas"%>
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
<form action="addclass.jsp">
<input type="submit" value="Add class">
<br>
<br>
<table border="1">
<tr><th>ID</th><th>class Name</th><th>Assign subject and teacher</th><th>Edit Action</th><th>Delete Action</th><th>View Subjects,Teachers and Students</th><tr>
<%ClasDao dao=new ClasDao();
List<Clas> list=dao.display();
for(Clas c:list){
%>
<tr><td><%=c.getId() %></td><td><%=c.getCname() %></td><td><a href="ast.jsp">Assign subject and teacher</a></td><td><a href="editc.jsp">Edit</a></td><td><a href="deletec.jsp">Delete</a></td><td><a href="viewreport.jsp">View Report</a></td></tr>
<%} %>
</table>
</form>
</body>
</html>