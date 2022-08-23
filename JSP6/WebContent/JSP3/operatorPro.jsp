<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>operatorPro.jsp</h1>
	
	<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	
	%>
	
	JSP : <%=num1 %> + <%=num2 %> = <%=num1+num2 %><br>
	EL : ${param.num1 } + ${param.num2 } = ${param.num1+param.num2 }<br>
	=> EL 표현식을 사용하면 전달받은 파라미터의 데이터가 자동으로 형변환된다.
	
	<hr>
	<h3>num1, num2 데이터는 모두 양수입니까? </h3>
	EL : 
	${param.num1 > 0}, ${param.num2 > 0 } => ${(param.num1 > 0) && (param.num2>0) }
	
	<h3>num1, num2 데이터는 모두 양수입니까? ("양수", "아니다") </h3>
	EL : 
	${((param.num1 > 0) && (param.num2>0))? "모두 양수":"아니다"}
	
	<hr>
	* el 표현식 비교연산자
	  == eq <br>
	  != ne <br>
	  <  lt <br>	
	  >  gt <br>
	  <= le <br>
	  >= ge <br>
		
	${((param.num1 gt 0) && (param.num2 gt 0))? "모두 양수":"아니다"}
	
	
	
	
</body>
</html>