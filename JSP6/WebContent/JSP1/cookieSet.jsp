<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieSet.jsp</h1>
	<h2> 서버 </h2>
	<%
	   // 서버
	   System.out.println("서버 : 클라이언트의 요청 받음");
	   System.out.println("서버 : 클라이언트와의 상태를 유지하기 위해 쿠키 객체 생성");
	   
	   // 서블릿 API 사용
	   // 쿠키객체 생성 (메모리 로드,HDD 저장X)
	   Cookie cookie = new Cookie("name","ITWILL");
	   
	   // 쿠키설정 (쿠키 사용기간 설정)
	   cookie.setMaxAge(600); //10분
	   
	   // 쿠키 보내기(클라이언트)
	   response.addCookie(cookie);
	   System.out.println("서버 : 쿠키 정보 생성 전달 완료");
	
	%>
	
	<script type="text/javascript">
	   alert(" 쿠키값 생성 ");
	   location.href="cookieTest.jsp";	
	</script>
	
	
	
	
</body>
</html>