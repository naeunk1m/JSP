<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>

<%
// 세션값 가져오기
String loginID = (String)session.getAttribute("loginID");
if(loginID == null){
	// 로그인 안한 상태 -> 세션값 (loginID) 없음
	%>
	<div id="login"><a href="../member/login.jsp">login</a> | 
					<a href="../member/join.jsp">join</a></div>
	<% 
}else{
// 로그인 성공 -> 세션값 (loginID) 있음
	%>
	<div id="login"><%=loginID %>님 | <a href="../member/logout.jsp">logout</a> | 
					<a href="../member/update.jsp">update</a></div>
	<%
	}
%>

<div class="clear"></div>
<!-- 로고들어가는 곳 -->
<div id="logo"><img src="../images/logo.gif" width="265" height="62" alt="Fun Web"></div>
<!-- 로고들어가는 곳 -->
<nav id="top_menu">
<ul>
	<li><a href="../main/main.jsp">HOME</a></li>
	<li><a href="../company/welcome.jsp">COMPANY</a></li>
	<li><a href="#">SOLUTIONS</a></li>
	<li><a href="../center/notice.jsp">CUSTOMER CENTER</a></li>
	<li><a href="#">CONTACT US</a></li>
</ul>
</nav>
</header>