<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>update.jsp</h1>
   <!-- admin 나이정보를 수정 -->
   
   	<%!static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	static final String DBID = "root";
	static final String DBPW = "1234";%>
	
	
	<%
	   //1. 드라이버 로드
	   Class.forName(DRIVER);
	
	   //2. 디비연결
	   Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
	   
	   //3. SQL & pstmt
	   String sql = "update itwill_member set age=? where id=?";
	   PreparedStatement pstmt = con.prepareStatement(sql);
	   
	   //???
	   pstmt.setInt(1, 99);
	   pstmt.setString(2, "admin");
	   
	   // 4. SQL 실행
	   pstmt.executeUpdate();
	   
	   
	
	%>
   
   
   
   
   
   

</body>
</html>