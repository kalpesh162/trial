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
	<h1>
		<c:out value="${'Kalpesh'}"></c:out>
	</h1>

	<hr>

	<c:set var="num" value="${5}">
	</c:set>
	<h2>
		NUM IS
		<c:out value="${num}"></c:out>
	</h2>

	<hr>

	<c:set var="x" value="${100 }" scope="session"></c:set>
	<br>
	<c:out value="${x }"></c:out>
	<b> <c:out value="${sessionScope.x}"></c:out>
	</b>

	<hr>

	<c:set var="age" value="${21}"></c:set>

	<c:if test="${age>18}">
		<b> <c:out value="${ 'Adult' }"></c:out>
		</b>
	</c:if>

    
    <hr>
    
    <h2> Choose When Otherwise</h2>
   
   <c:set var="num1" value="${5}"></c:set>
  
   <c:choose>
   
   <c:when test="${num1<10 }">
    <h2><c:out value="${'HI'}"></c:out></h2>
   </c:when>
   <c:otherwise>
    <h2><c:out value="${'BYE'}"></c:out></h2>
   </c:otherwise>
   
   </c:choose>
    
    <hr>
   <c:forEach var="x" begin="1" end="10" step="1">
     <h1><c:out value="${x}"></c:out> </h1>
   </c:forEach>  
  
  
  
  


</body>
</html>