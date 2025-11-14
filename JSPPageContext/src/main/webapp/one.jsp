<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
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
List<String> friends=new ArrayList<String>();
friends.add("Dharamji");
friends.add("Hema");
friends.add("Sunny Deol");
friends.add("Bobby Deol");
friends.add("Isha Deol");
%>

<% request.setAttribute("buddies", friends); %>
<!--  Here We are adding this in Session Scope  -->
<% pageContext.setAttribute("companion", friends, pageContext.SESSION_SCOPE); %>

<!-- pageContext.setAttribute("companion", friends)  If we use this then we will be accessioble below code-->
<h1>
<%= pageContext.getAttribute("companion") %>
</h1>


</body>
</html>