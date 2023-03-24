<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Subject Name Update Form</i></h1>
<form action="editsubnameController.jsp">
<input type="hidden" name="subid" value=<%=request.getParameter("subid") %>>
Updated Name<input type="text" name="subname">
<input type="submit" value="update">
</form>
</body>
</html>