<%@page import="com.itwillbs.test.JavaBean1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>beanPro1.jsp</h1>
	
	<%
	   String id = request.getParameter("id");
	%>
	
	아이디 : <%=id %> <br>
	
	<h2> 자바빈 객체를 사용하여 처리 </h2>
	<%
	  JavaBean1 jb1 = new JavaBean1();
	  // jb1.setId(id);
	  jb1.setId(request.getParameter("id"));
	  jb1.setName(request.getParameter("name"));
	  jb1.setAddr(request.getParameter("addr"));
	%>
	
	아이디 : <%=jb1.getId() %>
	이름 : <%=jb1.getName() %>
	주소 : <%=jb1.getAddr() %>
	
	<hr>
	<h2> 액션태그-자바빈객체를 사용 </h2>
	<!-- 액션태그를 사용해서 객체 생성 -->
	<jsp:useBean id="jb2" class="com.itwillbs.test.JavaBean1"/>
	<!-- 전달된 파라미터를 저장 -->
<%-- 	<jsp:setProperty property="id" name="jb2" param="id"/>
	<jsp:setProperty property="name" name="jb2" param="name"/>
	<jsp:setProperty property="addr" name="jb2" param="addr"/> --%>
	
	<!-- 전달되는 파라미터의 이름과 프로퍼티의 이름이 같은경우,  param속성 생략  -->
	<%-- <jsp:setProperty property="addr" name="jb2" /> --%>
	
	<!-- 전달되는 모든 파라미터의 값을 해당 프로퍼티에 저장(개수,종류 상관없음) -->
	<jsp:setProperty property="*" name="jb2"/>
	
	<hr>	
	아이디 : <jsp:getProperty property="id" name="jb2"/>
	이름 : <jsp:getProperty property="name" name="jb2"/>
	주소 : <jsp:getProperty property="addr" name="jb2"/>
	
	
	
	<h2> 객체 생성 </h2>
	 jsp:useBean id="객체레퍼런스명" class="클래스위치(패키지.클래스명)"
	 
	<h2>객체 정보 저장</h2>  
	 jsp:setProperty property="객체의 변수명" name="레퍼런스명" param="파라미터명"
	 set()역활을 수행=> param 이름 == property 이름 , param 생략
	 
	 jsp:setProperty property="*" name="레퍼런스명" 
	 전달되는 모든 파라미터를 해당 변수에 각각 저장 (타입,개수 상관없음)
	 
	 jsp:getProperty property="변수명" name="레퍼런스명"
	 
	 
	 
	 
	 
	 
	 
	
	
	
</body>
</html>