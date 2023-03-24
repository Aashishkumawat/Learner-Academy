<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="editsubname.jsp">
<input type="hidden" name="subid" value=<%=request.getParameter("id") %>>
<input type="submit" value="editsubname">
</form>
</body>
</html>