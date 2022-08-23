<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_set2.jsp</h1>
	
	<%
	// 전달된 정보 저장
	String name = (String) request.getAttribute("name");
// 	int price = (Integer) request.getAttribute("price"); => int 사용할 경우 오류가 생김 
//	int price = Integer.parseInt(request.getAttribute("price"));
 	String price = (String) request.getAttribute("price");
	String color = (String) request.getAttribute("color");
	
	%>
	이름 : <%=name%><br>
	가격 : <%=price%><br>
	색상 : <%=color%><br>
	<hr>
	<h2> EL 표현식 </h2>
	
	=> (영역객체).변수명 호출
		생략가능
	=> 영역 객체가 없을 경우 모든 영역을 찾아서 값을 가져온다.
		page -> request -> session -> application
		위 순서대로 ㅇㅇ역을 돌면서 데이터 검색함
		동일한 이름의 속성이 존재하는 경우 가장 먼저 만나는 데이터를 사용
		이후의 데이터는 접근 불가. (접근하려면 영역을 명시해야함)
	
	<br>
	이름 : ${requestScope.name }<br>
	이름 : ${sessionScope.name }<br>
	이름 : ${name }<br>
	가격 : ${price }<br>
	색상 : ${color }<br>

	<%
	//세션 영역데이터 사용하기 
	String test = (String) request.getAttribute("test");
	%>
	<%=test %><br>
	${test }<br>
	<!--특정 영역에 있는 데이터 삭제 -->
	<c:remove var="test" scope="session"/>
	${sessionScope.test }<br>
	
	
</body>
</html>