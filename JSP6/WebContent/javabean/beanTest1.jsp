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
    <H1>beanTest1.jsp</H1>
 <%--    <%
       JavaBean1 jb = new JavaBean1();
    	jb.setId("TEST");
    %>	
    <%=jb.getId() %> --%>
    
    
    <fieldset>
      <form action="beanPro1.jsp">
         아이디 : <input type="text" name="id"><br>
         이름 : <input type="text" name="name"><br>
         주소 : <input type="text" name="addr"><br>
         <input type="submit" value="전송">
      </form>    
    </fieldset>
    
    
    
    
    
    
</body>
</html>