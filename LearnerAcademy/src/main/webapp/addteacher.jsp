<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Adding a Teacher</i></h1>
<form action="addteacherController.jsp">
<table>
<tr><td>ID</td><td><input type="text" name="tid"></td></tr>
<tr><td>Teacher Name</td><td><input type="text" name="tname"></td></tr>
<tr><td>Teacher Designation</td><td><input type="text" name="tdes"></td></tr>
<tr><td></td><td><input type="submit" value="Add"></td></tr>
</table>

</form>
</body>
</html>