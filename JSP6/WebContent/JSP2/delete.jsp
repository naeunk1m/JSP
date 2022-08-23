<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>delete.jsp</h1>

	<h2>회원정보 삭제</h2>


	<%!static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	static final String DBID = "root";
	static final String DBPW = "1234";%>

	<%
		// 1. 드라이버로드
		Class.forName(DRIVER);
		// 2. 디비연결
		Connection con
          = DriverManager.getConnection(DBURL, DBID, DBPW);
		// 3. sql & pstmt
		String sql = "delete from itwill_member where id=? and pw =?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, "itwill");
		pstmt.setString(2, "1234");
		
		// 4. sql 실행
		pstmt.executeUpdate();
	%>








</body>
</html>