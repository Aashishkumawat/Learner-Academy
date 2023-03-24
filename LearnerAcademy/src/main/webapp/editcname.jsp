<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Class Name Update Form</i></h1>
<form action="editcnameController.jsp">
<input type="hidden" name="cid" value=<%=request.getParameter("cid") %>>
Update Class Name<input type="text" name="fname">

<input type="submit" value="update">
</form>
</body>
</html>