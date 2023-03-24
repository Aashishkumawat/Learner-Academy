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
<table border="1">
<tr><th>ID</th><th>class Name</th><th>Subject</th><th>Teacher</th><tr>
<%ClasDao dao=new ClasDao();
List<Clas> list=dao.display();
for(Clas c:list){
%>
<tr><td>1</td><td>Class I</td><td>maths</td><td>sandeep</td></tr>
<tr><td>2</td><td>Class II</td><td>english</td><td>vishnu</td></tr>
<%} %>
</table>
</body>
</html>