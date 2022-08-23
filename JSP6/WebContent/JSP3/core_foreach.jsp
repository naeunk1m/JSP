<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_foreach.jsp</h1>
	<%
		//1~10 출력하기
		for(int i=1;i<=10;i++){
			%>
				<%=i %><br>
				<% 
		}
	%>
	
	<hr>
	<c:forEach var="i" begin="1" end="10" step="1">
		${ i }<br>
	</c:forEach>
	
	<hr>
	<!-- 1부터 10까지의 수 중에서 홀수만 출력 -->
	<c:forEach var="i" begin="1" end="10" step="2">
		${i }
	</c:forEach>
	
	<hr>
	<!-- 1부터 10까지의 수 중에서 짝수만 출력 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:if test="${i%2 == 0 }">
			${i }
		</c:if>
	</c:forEach>
	
	<hr>
	<%
	 String[] strArr = {"abc","ass","zxc","qqwe","dfh","iuop","rne"};
    
    for(int i=0;i<strArr.length;i++){
   	 out.println(strArr[i]);
    }
    
    pageContext.setAttribute("strArr", strArr);
   
	%>
	
	<hr>  
       ${ strArr[0] } 
      <hr>  
      <%
//       	for(변수:배열, 컬렉션){
//       	}
      %>

	<c:forEach var="str" items="${strArr }">
      	${str }
	</c:forEach>
	
	<hr>
	
	<!-- a.b.c.d.f.g.hh.ii.qq -->
	
	<c:forTokens var="tk" items="a.b.c.d.f. g.hh.ii.qq" delims=".">
	<!-- test<br> -->
		${tk }
	</c:forTokens>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>