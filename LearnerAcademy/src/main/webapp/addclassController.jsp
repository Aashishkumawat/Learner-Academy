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
<%ClasDao dao=new ClasDao();
Clas clas=new Clas();
clas.setCname(request.getParameter("clsname"));
int row=dao.addclas(clas);
if (row>0){
	response.sendRedirect("Class.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>