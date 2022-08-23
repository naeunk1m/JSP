<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL 문법을 사용하기 위해서 필수 추가      -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_set.jsp</h1>
	<!--출력문 -->
	<c:out value="안녕하세욤"></c:out><br>
	<c:out value="안녕하세욤"/><br>
	아령하세여
	
	<hr>
	
	<%
		int num1 = 10;	
		int num2 = 20;	
	
	%>
	
	합 : <%=num1 + num2 %><br>
	합 (EL) : ${num1 + num2 }<br> <!-- => 파라미터로 저장한 게 아니므로 출력되지 않음. -->
	
	합 (JSTL) : <c:out value="num1+num2"></c:out> <br><!-- 변수가 아니라 문자로 인식되므로 출력되지 않음 -->
	합 (JSTL) : <c:out value="<%=num1+num2 %>"></c:out><br> <!-- jsp 선언은 가능 -->
<%--합 (JSTL) : <c:out value="${num1+num2 }"></c:out><br> el 표현식 불가능  --%>
	합 (JSTL) : <c:out value="${100+200}"></c:out><br> <!-- 자주 사용 예정 -->
	
	<hr>
	
	@<c:out value="${itwill.name }"/>@ <!-- default 값이 없으면 공백 출력 -->
	@<c:out value="${itwill.name }" default="NULL 값 대신 사용"/>@ <!-- default으로 출력 가능 -->
	
	
	<hr>
	
<!-- 	<abc> 태그는 abc 입니다. <br> 출력하면 태그 정보가 사라짐. -->
<!-- 	< abc > 태그는 abc 입니다. <br> 스페이스를 양 옆으로 준다면 보여줌. -->
	&lt;abc> 태그는 abc 입니다. <br> <!-- &lt;를 사용하여 태그를 화면에 보이게 해주지만 이건 실제 태그는 아님. -->
	<c:out value="<abc>태그는 abc 입니다."/><br> <!-- c:out을 사용하면 문자로 인식하므로 바로 출력 가능 -->
	
	<hr>
	
	<h2>JSTL - 변수</h2>
	
	<%
		// 변수 (자바코드) : 다른 페이지에서 사용 불가능
		int a = 100;
		int b = 200;
		int sum = a+b;
	%>
	a+b = <%=sum %>	<br>
	
	<h3>JSTL 변수 선언 (속성선언)</h3>
	=> JSTL 변수는 EL 표현식으로만 사용 가능 
	   영역 객체에 정보를 저장
	
	<%--<c:set var="변수명" value="변수값"/> --%>
	<%
		//pageContext.setAttribute("c", 1000);
	%>
	<c:set var="c" value="1000"/> <!-- 여기가 -->
	<c:set var="d" value="2000"/> <!-- 영역 객체! -->
	<!--해당 영역만 맞으면 페이지가 어디든 데이터를 꺼내 사용할 수 있다.  -->
	
	<%-- <c:set var="sum2" value="c+d"/> --%>
	<c:set var="sum2" value="${c+d }"/>
	
	<%-- <%=sum2%> JSP 표현식 사용 불가 ! --%>
	<%-- ${sum2 } el 표현식 사용은 가능한데, 더한 값의 합을 보여주지는 않음 (연산 안됨) --%>
	
	<br>
	${sum2 } <!-- el 표현식 사용가능 -->
	
	<hr>
	
	<c:set var="name" value="phone" scope="request"/>
	<%
	 //request.setAttribute("price",10000);
		session.setAttribute("test", "itwill");
	%>
	<c:set var="price" value="10000" scope="request"/>
	<c:set var="color" value="black" scope="request"/>
	
	${name }<br>
	
	<!--페이지 이동 + request영역 값 set을 실행해도 set2번이 실행됨.
	기존 주소 유지, 화면은 set2-->
	<jsp:forward page="core_set2.jsp"/>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>