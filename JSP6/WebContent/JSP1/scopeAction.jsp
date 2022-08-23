<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1>scopeAction.jsp</h1>
  
    <%
      String id = request.getParameter("id");
    %>
   아이디 : <%=id %>
   비밀번호 : <%=request.getParameter("pw") %>
   <br>
  
   * 영역객체에 정보 출력<br>
    
    page 영역의 공유데이터(Attribute) : <%=pageContext.getAttribute("pValue") %> <br>
    request 영역의 공유데이터(Attribute) : <%=request.getAttribute("rValue") %>  <br>
    session 영역의 공유데이터(Attribute) : <%=session.getAttribute("sValue") %>  <br>
    application 영역의 공유데이터(Attribute) : <%=application.getAttribute("aValue") %> <br>  

</body>
</html>