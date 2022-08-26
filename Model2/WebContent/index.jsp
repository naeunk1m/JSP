<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- index.jsp -->
	<%
		// MVC 프로젝트 실행 시작페이지
		// MVC 프로젝트에서는 index.jsp 페이지의 절대로 .jsp 페이지 실행 금지
		// => 주소창에 .jsp 주소가 보이면 MVC패턴 깨짐
		// response.sendRedirect("./Test.bo");
	
		// 글쓰기 페이지 이동
		response.sendRedirect("./BoardWrite.bo");
	
		// 상대주소
		
		// 가상주소 사용 시
		// java(서블릿: 컨트롤러) : ./Test.bo => 가상주소
		// .(프로젝트명)
		
		// 실제주소 사용 시
		// jsp(view) : ./Test.jsp => 실제주소
		//	. (WebContent)
		
		
		
	%>
</body>
</html>