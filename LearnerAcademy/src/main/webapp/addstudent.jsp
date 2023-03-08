<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Adding a Student</i></h1>
<form action="addstudentController.jsp">
</form>
<table>
<tr><td>First Name</td><td><input type="text" name="fname"></td></tr>
<tr><td>Last Name</td><td><input type="text" name="lname"></td></tr>
<tr><td>Address</td><td><input type="text" name="adrs"></td></tr>
<tr><td>Phone No</td><td><input type="text" name="phn"></td></tr>
<tr><td>Date of Birth</td><td><input type="date" name="dob"></td></tr>
<tr><td></td><td><input type="submit" value="Add"></td></tr>
</table>
</body>
</html>