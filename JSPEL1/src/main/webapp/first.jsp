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

Student student=new Student(11,"Sachin",99);
request.setAttribute("stud", student);

%>


<jsp:forward page="second.jsp"></jsp:forward>


</body>
</html>