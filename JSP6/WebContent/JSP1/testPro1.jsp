<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <H1>testPro1.jsp</H1>
   <%
      // HTTP 요청정보는 파라미터 형태로 전달될때 항상 String타입
      
      // 주소에 전달되는 정보 =>파라미터 (String)
      
      int num = Integer.parseInt(request.getParameter("num"));
   %>
   <%=num+100 %><br>
   <%=request.getParameter("num")+100 %> <br>
   

</body>
</html>