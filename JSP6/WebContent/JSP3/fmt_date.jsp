<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fmt_date.jsp</h1>
	
	<%=new Date() %> <hr>
	
	<c:set var="today" value="<%=new Date() %>"/>
	
	${today }<hr>
	<h3> 날짜</h3>
	<fmt:formatDate value="${today }"/><hr>
	<h3> 시간</h3>
	<fmt:formatDate value="${today }" type="time"/><hr>
	<h3> 날짜+시간</h3>
	<fmt:formatDate value="${today }" type="both"/><hr>
	
	<h3> 날짜</h3>
	<fmt:formatDate value="${today }" dateStyle="full"/><hr>
	<fmt:formatDate value="${today }" dateStyle="long"/><hr>
	<fmt:formatDate value="${today }" dateStyle="medium"/><hr>
	<fmt:formatDate value="${today }" dateStyle="short"/><hr>
	
	<h3> 시간</h3>
	<fmt:formatDate value="${today }" type="time" timeStyle="full"/><hr>
	<fmt:formatDate value="${today }" type="time" timeStyle="long"/><hr>
	<fmt:formatDate value="${today }" type="time" timeStyle="medium"/><hr>
	<fmt:formatDate value="${today }" type="time" timeStyle="short"/><hr>
	
	
	2022년 8월 23일 (화) 오후 4시 23분 00초<br>
	<fmt:formatDate value="${today }" type="both" dateStyle="long" timeStyle="long"/><hr>
	
	2022/8/13 (화) (오후) 4:23:00<br>
	<fmt:formatDate value="${today }" pattern="yyyy/MM/dd (E)"/>
	<fmt:formatDate value="${today }" type="time" pattern="(a) hh:mm:ss"/>
	
	<!-- p.27~ 67,-->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>