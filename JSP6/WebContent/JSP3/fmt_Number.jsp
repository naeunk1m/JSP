<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fmt_Number.jsp</h1>
	
	<h2> 숫자데이터를 원하는 형태로 출력 Formatting 라이브러리 </h2>
	
	<h3> HTML </h3>
	
	<%
		pageContext.setAttribute("money", 1000000000);
	%>
	
	<!-- fmt:formatNumber는 숫자에 콤마(,)를 자동으로 생성해주는 역할 -->	
	10000000<br>
	10,000,000<br>
	
	<fmt:formatNumber value="10000000" groupingUsed="false"/><br>
	
	월급 : ${money }원 <br>
	월급 : <fmt:formatNumber value="${money }"/>원<br>
	
	<h3>소수점 표현</h3>
	3.1233456 / 소수점 2번째 자리까지만 표기<br>
	# 데이터가 존재하는 경우 표현 가능, 없을 경우 공백<br>
	<fmt:formatNumber value="3.1233456" pattern="#.##"/><hr>
	
	10.5 	  / 10.50 의 형태로 출력<br>
	0 데이터가 있으면 원래 데이터 출력, 없으면 0으로 표시
	<fmt:formatNumber value="10.5" pattern="##.00"/><hr>
	
	0.5 => 50%
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>