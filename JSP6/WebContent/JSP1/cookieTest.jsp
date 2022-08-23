<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>cookieTest.jsp</h1>
	쿠키 :  HTTP 프로토콜 정보가 웹 페이지의 정보를 저장X
	   => 서버와의 상태를 저장하기 위해서 사용하는 정보(클라이언트)
	
	   => 이름,값,유효기간,도메인,경로와 같은 정보들로 구성
	      (숫자,알파벳)   
	   
	       			-> 요청 ->  
	  클라이언트 					 서버  (new Cookie) 
	     (C)        <-응답(C) <-
	<hr><hr><hr>
	
	
	<%
	  //클라이언트
	  
	  // 쿠키값 가져오기 => 쿠키정보는 쿠키 배열의 형태로 전달됨
	  Cookie[] cookies = request.getCookies();
	  
	  // 쿠키값이 있는지 제어
	  if(cookies != null){
		  // 쿠키값이 존재한다.
		  for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("name")){
				out.println("쿠키이름 : "+cookies[i].getName()+"<br>");
				out.println("쿠키값 : "+cookies[i].getValue()+"<br>");				
			}		  
		  }		  
		  
	  }
	  
	%>
	<hr>
	
	
	<h2> 클라이언트 </h2>
	<input type="button" value="쿠키 생성" onclick="location.href='cookieSet.jsp';">
	<input type="button" value="쿠키 삭제" onclick="location.href='cookieDel.jsp';">
	
	
	
	
	
	
	
	
	

</body>
</html>