<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_if.jsp</h1>
	
	<!--속성값 생성 -->
	<c:set var="name" value="ITWILL"/>
	
	<!--속성값 출력-->
	
	${name } <hr>
	
	<!-- test 속성값은 el표현식을 사용하여 값을 비교한다. -->
	<c:if test="${ 10 < 20 }">
		20값이 더 크다. 
	</c:if>
	<!-- name 정보가 iwill일 경우 "ITWILL님 안녕하세요" -->
	<c:if test="${ name == 'ITWILL' }">
		ITWILL님 안녕하세요.
	</c:if>

	<br>

	<!-- test 속성값은 el표현식을 사용하여 값을 비교한다. -->
	<c:if test="${ 10 lt 20 }">
		20값이 더 크다. 
	</c:if>
	<!-- name 정보가 iwill일 경우 "ITWILL님 안녕하세요" -->
	<c:if test="${ name == 'ITWILL' }">
		ITWILL님 안녕하세요.
	</c:if>
	<hr>
	
	<!-- switch-case 형태와 유사 -->
	<c:choose>
		<!-- case구문 -->
		<c:when test="${ 10>20 }">
			10이 더 크다.<br>
		</c:when>	
		<c:when test="${ 10>20 }">
			20이 더 크다.<hr>
		</c:when>
		<!-- default구문(else) -->
		<c:otherwise>
			<c:if test="${ 10!=20 }">
				다른 값 !!! <hr>
			</c:if>
		</c:otherwise>	
	</c:choose>
	
	
	
	
	
</body>
</html>