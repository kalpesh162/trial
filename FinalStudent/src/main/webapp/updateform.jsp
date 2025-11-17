<%@page import="com.model.Student"%>
<%@page import="com.dao.StudentDAOImpl"%>
<%@page import="com.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	StudentDAO dao = new StudentDAOImpl();
	Student student = dao.findStudentById(id);
	request.setAttribute("stud", student);
	%>

	<h1>STUDENT UPDATE FORM</h1>

	<form action="StudentUpdateServlet" method="get">

		Id : <input type="text" name="id" value="${requestScope.stud.id}">
		<br> 
		Name : <input type="text" name="name" value="${requestScope.stud.name}"> 
		<br>
		Marks : <input type="text" name="marks" value="${requestScope.stud.marks}">
		
		<br> <input type="submit" value="UPDATE">

	</form>




</body>
</html>