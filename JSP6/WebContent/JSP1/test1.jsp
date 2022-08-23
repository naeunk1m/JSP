<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>test1.jsp</h1>
  <!-- HTML 주석문 -->
  <!-- // 안녕하세요. -->
  <%
    // java 주석
    // 안녕하세요.
    // JSP = java + html(JavaScript)  
  %>
  <%-- JSP 주석  --%>
  <%-- <%  1234 %> --%>
  <script type="text/javascript">
    // javaScript 주석
  </script>
  
  <%
   // 스크립틀릿 : java 코드 작성영역
   // int a=100;
  
   // 문자열 배열 생성 -> 데이터 입력, 출력
   String[] strArr= new String[3];
   
   strArr[0]="java";
   strArr[1]="jsp";
   strArr[2]="javaScript";
   
   
   for(int i =0;i<strArr.length;i++){
	   System.out.println(strArr[i]);
   }
   
   for(int i =0;i<strArr.length;i++){
	   out.println(strArr[i]+"<br>");
	   out.println("<h3>"+strArr[i]+"</h3>");
   }
  
   
   for(int i =0;i<strArr.length;i++){
  %>
    <hr>
  <%
   // 스크립틀릿 : java 코드 작성영역
	  out.println(strArr[i]+"<br>");
	  out.println("<h3>"+strArr[i]+"</h3>");
	}
  
   for(int i =0;i<strArr.length;i++){
  %>
  
     <%=strArr[i] %><br>
     
  <%  
   }  
  %>
  
  

</body>
</html>