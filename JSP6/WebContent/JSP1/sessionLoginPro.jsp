<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>sessionLoginPro.jsp</h1>
   
   <%
      // 0. 한글처리
      request.setCharacterEncoding("UTF-8");
      
      // 1. 전달된 파라미터 저장
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      
      System.out.println("전달된 정보 : "+ id+","+pw);
      // 2. 비교 admin/1234
      
      if(id.equals("admin")){
    	  //  아이디가 있다.
    	 if(pw.equals("1234")){
    		 // 회원 => 로그인 성공
    		 out.println("로그인 성공!");
    		 //  회원 정보를 저장 session영역
    		 session.setAttribute("id", id);
    		 session.setAttribute("loginResult",true);
    		 
    		 // 메인페이지로 이동
    		 response.sendRedirect("sessionMain.jsp");
    		 
    	 } else{
    		 // 아이디는 있지만, 비밀번호가 다른경우
    		 out.println(" 비밀번호 오류! ");    	
    		 
    		 // 로그인페이지
    		 response.sendRedirect("sessionLogin.jsp");
    	 }
      }else{
    	  //  아이디가 없음.
    	  out.println("없는 회원입니다.");
    	  %>
    	   <script type="text/javascript">
    	      alert("계정정보가 없습니다.");
    	   </script>
    	  <%
      }
   
   
   
   
   %>
   
   
   
   
   
   
   
   
   
   
   
   
   
</body>
</html>