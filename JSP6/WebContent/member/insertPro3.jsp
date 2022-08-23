<%@page import="com.itwillbs.member.MemberDAO"%>
<%@page import="com.itwillbs.member.MemberBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insertPro3.jsp</h1>

	<%
		// 한글 처리
		request.setCharacterEncoding("UTF-8");
		// 전달된 정보 저장(아이디,비밀번호,이름,나이,성별,이메일)
	%>
	<!-- 액션태그-자바빈 -->
	<jsp:useBean id="mb" class="com.itwillbs.member.MemberBean" />
	<!-- 전달정보 저장 -->
	<jsp:setProperty property="*" name="mb" />
	<%
		// 	   MemberBean mb = new MemberBean();
		// 날짜정보 추가저장
		mb.setRegdate(new Timestamp(System.currentTimeMillis()));

		// 정보 확인
		// 	   System.out.println(mb);
		System.out.println(mb.toString());

		
		// 회원가입 - DB동작
		// insertMember()
		
		// MemberDAO 객체생성
		MemberDAO dao = new MemberDAO();
		
		dao.insertMember(mb);	
		

		// 회원가입 완료 -> 로그인
		response.sendRedirect("loginForm.jsp");
	%>






</body>
</html>