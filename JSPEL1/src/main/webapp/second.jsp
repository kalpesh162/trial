<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Student student = (Student) request.getAttribute("stud");
	%>
	<h1>
		<%=student.getId()%><br>
		<%=student.getName()%><br>
		<%=student.getMarks()%><br>


		<hr>
		<h1>${requestScope.stud }</h1>
		<hr>
		<h1>
			${requestScope.stud.id } <br>
			 ${requestScope.stud.name } <br>
			${requestScope.stud.marks } <br>
		</h1>




	</h1>
</body>
</html>