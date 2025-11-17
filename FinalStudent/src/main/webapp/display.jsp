<%@page import="com.model.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDAOImpl"%>
<%@page import="com.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/table.css">
</head>
<body>


	<%
	StudentDAO dao = new StudentDAOImpl();
	List<Student> list = dao.getAllStudents();
	request.setAttribute("studlist", list);
	%>

	<table>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>MARKS</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<c:forEach var="stud" items="${requestScope.studlist}">
			<tr>
				<td><c:out value="${stud.id}"></c:out></td>
				<td><c:out value="${stud.name}"></c:out></td>
				<td><c:out value="${stud.marks}"></c:out></td>
				<td><a href="updateform.jsp?id=${stud.id}">UPDATE</a></td>
				<td><a href="StudentDeleteServlet?id=${stud.id}">DELETE</a></td>
			</tr>

		</c:forEach>

	</table>


</body>
</html>