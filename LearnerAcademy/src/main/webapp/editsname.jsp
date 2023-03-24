<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Student Detail Update Form</i></h1>
<form action="editsnameController.jsp">
<input type="hidden" name="tid" value=<%=request.getParameter("tid") %>>
Update First Name<input type="text" name="fname">
<br>
Update Last Name<input type="text" name="lname">
<br>
Update Address<input type="text" name="adrs">
<br>
Update Phn No<input type="text" name="phn">
<br>
<input type="submit" value="update">
</form>
</body>
</html>