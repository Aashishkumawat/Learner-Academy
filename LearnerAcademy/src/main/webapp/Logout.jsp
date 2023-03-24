<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% HttpSession sessionobj=request.getSession(false); 
if(sessionobj!=null){
	sessionobj.invalidate();
}
response.sendRedirect("login.jsp");

%>
</body>
</html>