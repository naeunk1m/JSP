<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>logout.jsp</h1>
    
    <%
       // 로그인정보 제거 (세션초기화)
       session.invalidate();
       System.out.println("세션 초기화 완료(로그아웃)");
    %>
    <script type="text/javascript">
        alert('로그아웃 성공');
        location.href="main.jsp";
    </script>
    
    
    
</body>
</html>