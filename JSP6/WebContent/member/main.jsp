<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> main.jsp </h1>
   
   <!-- 반드시 로그인을 했을때만 방문, 로그인X  로그인 유도 -->
   
   <%
     // 세션영역에 있는 로그인아이디 정보를 가져오기
     
     String id = (String) session.getAttribute("loginID");
   
     if(id == null){
    	 // 로그인 안했다
    	 System.out.println("로그인 정보 없음!(main)");
    	 
    	 response.sendRedirect("loginForm.jsp");
     }
   
   %>
   
   <h2><%=id %>님 환영합니다</h2>
   
   <input type="button" value="로그아웃" onclick=" location.href='logout.jsp'; ">
   
   <hr>
   
   <h3><a href="info.jsp">개인정보 조회</a></h3>
   
   <h3><a href="updateForm.jsp">개인정보 수정</a></h3>
   
   <h3><a href="deleteForm.jsp">개인정보 삭제</a></h3>


<!-- 관리자 전용 메뉴 -->
<%
// if(id != null && id.equals("admin")) 아래의 두 문장을 한 문장으로 실행하고 싶을 때
// JSP 코드는 처음부터 끝까지 실행 후 동작한다.

	if(id != null){
	if(id.equals("admin")){
		%>
	   <h3><a href="memberList.jsp">회원 정보 목록</a></h3>
		<% 
	}
	}

%>

   
   
   
   
   

</body>
</html>