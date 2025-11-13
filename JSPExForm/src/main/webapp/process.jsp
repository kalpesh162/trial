<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- request  IMPLICT OBJECT  -->

	<%=request.getParameter("id")%>
	<br>
	<%=request.getParameter("name")%>
	<br>
	<%=request.getParameter("marks")%>
	<br>

  <hr>
  <h1>
  <%= request.getParameter("id") + request.getParameter("name") +request.getParameter("marks") %>
  </h1>


</body>
</html>