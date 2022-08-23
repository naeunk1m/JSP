<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>scopePro.jsp</h1>
  <%
  	 String id = request.getParameter("id");
  
  %>
  <h2>파라미터 정보</h2>
  아이디 : <%=id %> 
  
  <h2>영역객체의 속성(Attribute)</h2>
  * 영역객체의 속성을 저장 (공유할 데이터를 저장)
  	[영역객체].setAttribute(키,값);
  * 영역객체의 속성을 사용 (공유된 데이터의 값을 사용)
    [영역객체].getAttribute(키);	
   <%--  <%=pageContext.getAttribute("name") %> --%>
   
   * 영역객체에 정보 저장<hr>
   <%
      pageContext.setAttribute("pValue", 109);
      request.setAttribute("rValue", "request Value@@");
      session.setAttribute("sValue", "session Value##");
      application.setAttribute("aValue", "application Value$$");
      
   
   %>
   * 영역객체에 정보 출력<br>
    
    page 영역의 공유데이터(Attribute) : <%=pageContext.getAttribute("pValue") %> <br>
    request 영역의 공유데이터(Attribute) : <%=request.getAttribute("rValue") %>  <br>
    session 영역의 공유데이터(Attribute) : <%=session.getAttribute("sValue") %>  <br>
    application 영역의 공유데이터(Attribute) : <%=application.getAttribute("aValue") %> <br>  
  
    <hr>
    
    <h2>페이지 이동</h2>
    
    <h3>1. a태그 : 파라미터,session,application </h3>
    
     <a href="scopeAction.jsp?id=<%=id%>&pw=1234">scopeAction.jsp 페이지로 이동</a>
    
    <h3>2.  JavaScript : 파라미터, session,application </h3>
    <script type="text/javascript">
    	//alert('js:scopeAction.jsp 페이지 이동');
    	//location.href="scopeAction.jsp?id=<%=id%>&pw=1234";
    </script>
    
    <h3>3. JSP - sendRedirect() : 파라미터,session,application </h3>
    <%
         //* JSP 페이지 실행순서 : Java(JSP) -> HTML -> JavaScript
         
         //페이지 이동 (js-이동과 같이 사용불가)
    	//response.sendRedirect("scopeAction.jsp?id="+id+"&pw=1234");    
    %>
    
    <h3>4. 액션태그(jsp) - forward : 파라미터, request,session,application</h3>
     주소의 변화는 없으면서, 화면만 전환 <br>
    <jsp:forward page="scopeAction.jsp"/>
    
    
    
    
  
  
  

</body>
</html>