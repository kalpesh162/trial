<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello</h1>
	<!--  Scriptlet  -->

	<%
	String name = "Kareena";
	%>
	<h1>
		<%
		int y = 22;
		out.print(name);
		%>
	</h1>
	<!-- Decalration -->

	<%!int num = 10;%>

	<!--  Expression -->
	<h2 style="font-family: cursive; color: blue;">
		<%=name.toUpperCase()%>
	</h2>

	<hr>
	<h1>Table</h1>

	<%
	int i = 1;
	for (i = 1; i <= 10; i++) {
	%>
	<b> <%=(5 * i)%></b>
	<br>

	<%
	}
	%>





</body>
</html>