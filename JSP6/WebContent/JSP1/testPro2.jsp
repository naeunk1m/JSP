<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1>testPro2.jsp</h1>
  
  <%
    	// POST방식으로 한글 데이터를 전달하면 인코딩변경(한글깨짐)
    	// => 데이터 저장전에 가장먼저 처리
    	request.setCharacterEncoding("UTF-8");

    	//이름 
    	String name = request.getParameter("name");
    	//나이
    	int age = Integer.parseInt(request.getParameter("age"));
    %>
  
    이름 : <%= name %>, 나이 <%=age %><br>
    <!-- 20살이상  "성인입니다", 20살미만 "미성년자입니다" -->
    <%
      if(age >=20){
    	  out.println("성인입니다");
      }else{
    	  out.println("미성년자입니다");
      }
    
    
	    if(age >=20){
	    	%>
	  	      <h3>성인입니다</h3>	    	
	    	<%
	    }else{
	    	%>
	  	      <h3>미성년자입니다</h3>
	    	<%
	    }
    %>
    <hr>
    <%
       String gender = request.getParameter("gender");
       String hobby = request.getParameter("hobby");
       String[] hobbys = request.getParameterValues("hobby");
       
       String room = request.getParameter("room");
    %>
    
    성별 : <%=gender %><br>
    강의장 : <%=room %><br>
    
<%--      취미 : <%=hobbys[0] %><br> --%>
<%--     취미 : <%=hobbys[1] %><br> --%>
    <%
      if(hobbys != null){
    	  for(int i=0;i<hobbys.length;i++){
    	    	%>
    	    	
    		    취미 : <%=hobbys[i] %><br>
    		    
    		    <%    	  
    	      }  
      }
    %>
    
    
  

</body>
</html>