<%@page import="com.itwillbs.board.db.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>boardListAll.jsp</h1>
   
   <h2> 게시판 목록 </h2>
   <%
	 //request.setAttribute("boardList", boardList);
     
//      List<BoardDTO> boardList = (List<BoardDTO>)request.getAttribute("boardList");

//	request.setAttribute("pageNum", pageNum);
//	request.setAttribute("cnt", cnt);
//	request.setAttribute("pageCount", pageCount);
//	request.setAttribute("pageBlock", pageBlock);
//	request.setAttribute("startPage", startPage);
//	request.setAttribute("endPage", endPage);

	String pageNum =(String) request.getAttribute("pageNum");
	int cnt = (int) request.getAttribute("cnt");
	int pageCount = (int) request.getAttribute("pageCount");
	int pageBlock = (int) request.getAttribute("pageBlock");
	int startPage = (int) request.getAttribute("startPage");
	int endPage = (int) request.getAttribute("endPage");
	
     
   %>
   
   <h3><a href="./BoardWrite.bo">글쓰기(new)</a></h3>
   
   <table border="1">
      <tr>
        <td>번호</td>
        <td>제목</td>
        <td>글쓴이</td>
        <td>조회수</td>
        <td>작성일</td>
        <td>IP</td>
      </tr>

	  <c:forEach var="dto" items="${requestScope.boardList }">
      	<tr>
	        <td>${dto.bno }</td>
	        <td>${dto.subject }</td>
	        <td>${dto.name }</td>
	        <td>${dto.readcount }</td>
	        <td>${dto.date }</td>
	        <td>${dto.ip }</td>
      	</tr>
      </c:forEach>
      
<%--       <% for(int i=0; i<boardList.size();i++){ --%>
//     	  //DB-> DTO-> List
//     	  BoardDTO dto = boardList.get(i);
      
<%--       %> --%>
<!-- 	       <tr> -->
<%-- 	        <td><%=dto.getBno() %></td> --%>
<%-- 	        <td><%=dto.getSubject() %></td> --%>
<%-- 	        <td><%=dto.getName() %></td> --%>
<%-- 	        <td><%=dto.getReadcount() %></td> --%>
<%-- 	        <td><%=dto.getDate() %></td> --%>
<%-- 	        <td><%=dto.getIp() %></td> --%>
<!-- 	      </tr> -->
<%--      <%} %> --%>
   
   </table>
	<c:if test="${cnt != 0 }">
		<!-- 이전 : 직전 페이지 블럭의 첫 번째 페이지 호출 -->
		<c:if test="${startPage > pageBlock }">
			<a href="./BoardList.bo?pageNum=${ startPage-pageBlock}">[이전]</a>
		</c:if>
		
		<!-- 1,2,3,4,5.... -->
		<c:forEach begin="${startPage }" end="${endPage }" step="1">
			<a href="./BoardList.bo?pageNum=${i }">[${i }]</a>
		</c:forEach>
		
		<c:if test="${endPage < pageCount }">
		   	<a href="./BoardList.bo?pageNum=${startPage+pageBlock }">[다음]</a>
		</c:if>
	</c:if>
   
   
</body>
</html>