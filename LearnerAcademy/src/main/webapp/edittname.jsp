<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Teacher Name Update Form</i></h1>
<form action="edittnameController.jsp">
<input type="hidden" name="tid" value=<%=request.getParameter("tid") %>>
Updated Name<input type="text" name="tname">
<input type="submit" value="update">
</form>
</body>
</html>