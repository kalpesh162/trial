<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ page import="com.bean.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="student" class="com.bean.Student"></jsp:useBean>
	<jsp:setProperty property="id" name="student" param="id" />
	<jsp:setProperty property="name" name="student" param="name" />
	<jsp:setProperty property="marks" name="student" param="marks" />

	<h1>
		<jsp:getProperty property="id" name="student" />
		<br>
		<jsp:getProperty property="name" name="student" />
		<br>
		<jsp:getProperty property="marks" name="student" />
		<br>
	</h1>

	<%=student.getName()%>

	<hr>
	<jsp:useBean id="student1" class="com.bean.Student"></jsp:useBean>
	<jsp:setProperty property="id" name="student" param="id" />
	<jsp:setProperty property="name" name="student" param="name" />
	<jsp:setProperty property="marks" name="student" param="marks" />

	<hr>
	<%
	session.setAttribute("student", student);
	%>

	<h1>
		<a href="show.jsp">SHOW</a>
	</h1>




</body>
</html>