<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>paramPro.jsp</h1>
    
    
    <h2> 전달된 정보 출력 </h2>
    
    <%
       // 한글처리
       request.setCharacterEncoding("UTF-8");
    
       String id = request.getParameter("id");
       out.print("아이디 : "+id+"<br>");
       
       //String foods = request.getParameter("foods");
       //String foods2 = request.getParameter("foods");
       String[] foods = request.getParameterValues("foods");
       
      
    %>
    
    ID : <%=id %>  <br> 
    ID(EL) : ${id } (x)<br>
<!--     JSP 변수 el표현식으로 출력 -->
    ID(EL) : ${param.id } <br>
<%--     foods : <%=foods %><br> --%>
<%--     foods : <%=foods2 %><br> --%>
    foods : <%=foods[0] %><br>
    foods : <%=foods[1] %><br>
   <%--  foods : <%=foods[2] %><br> --%>
    
    foods : ${paramValues.foods[0] }<br>
    foods : ${paramValues.foods[1] }<br>
    foods : ${paramValues.foods[2] }<br>
    *  EL표현식은 null값을 공백으로 출력함.<hr>
    
    <%
    	String[] hobbys = request.getParameterValues("hobby");
     
       if(hobbys != null){
    	   for(int i=0;i<hobbys.length;i++){
    		   %>
    		    취미 : <%=hobbys[i] %><br>    		   
    		   <%
    	   }
       }
    %>
    * EL 표현식은 반복문 사용 불가능 => JSTL과 결합하면 반복문 사용가능
    hobby : ${paramValues.hobby[0] }<br>
    hobby : ${paramValues.hobby[1] }<br>
    hobby : ${paramValues.hobby[2] }<br>
    
    
    
    
    
    
    
    
    
    
    
    
    

</body>
</html>