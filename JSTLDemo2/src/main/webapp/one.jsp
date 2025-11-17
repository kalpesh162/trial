<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<String> friends = new ArrayList<String>();
	friends.add("Rahul");
	friends.add("Sachin");
	friends.add("Saurabh");
	friends.add("Manoj");
	friends.add("Ketan");
	request.setAttribute("list", friends);
	%>
	<c:forEach var="name" items="${requestScope.list}">
		<b> <c:out value="${name}"></c:out>  <br>
		</b>
	</c:forEach>
</body>
</html>