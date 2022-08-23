<%@page import="com.itwillbs.member.MemberBean"%>
<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>updateForm.jsp</h1>
  
  <h2> 회원수정 페이지 </h2>
  <%
    // 로그인 체크
    String id = (String)session.getAttribute("loginID");
    if(id == null){
    	response.sendRedirect("loginForm.jsp");
    }
    
    // 기존의 회원정보 화면 출력
    // MemberDAO 객체 생성
    MemberDAO dao = new MemberDAO();
    
    // 회원정보 조회메서드  
    MemberBean mb = dao.getMember(id);
    
    // 성별의 정보가 없을때,기본값 설정
    if(mb.getGender() == null){
    	mb.setGender("남");
    }
    
  
  %>
  
  
  <fieldset>
     <form action="updatePro.jsp" method="post"  name="fr"  onsubmit="checkData();">
        아이디 : <input type="text" name="id" value="<%=mb.getId()%>" readonly="readonly"> <br>
        비밀번호 : <input type="password" name="pw" placeholder="비밀번호를 입력하시오"> <br>
        이름 : <input type="text" name="name" value="<%=mb.getName()%>"> <br>
        나이 : <input type="text" name="age" value="<%=mb.getAge()%>"> <br>
        성별 : <input type="radio" name="gender" value="남" 
			        <%if(mb.getGender().equals("남")){ %>
			        checked="checked"
			        <%} %>        
			        >남 
        	   <input type="radio" name="gender" value="여" 
        	       <%if(mb.getGender().equals("여")){ %>
			        checked="checked"
			        <%} %> 
        	   
        	    >여 
        <br>
        이메일 : <input type="text" name="email" value="<%=mb.getEmail()%>"> <br>
        
        <hr>
        <input type="submit" value="회원수정하기">     
     </form>  
  </fieldset>
  
  
  
  
      <script type="text/javascript">
       //alert("document.fr.pw.value : "+document.fr.pw.value);
     
       function checkData(){
    	   var pw = document.fr.pw.value;
    	   
    	   if(pw == "" || pw.length < 1){
    		   alert(" 비밀번호를 입력하세요.");
    		   document.fr.pw.focus();
    		   return false;
    	   }
    	   
    	   
       }
    
    </script>
  

</body>
</html>