<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
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
   <h1>insert.jsp</h1>
   
   <%!
     static final String DRIVER = "com.mysql.cj.jdbc.Driver";
     static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
     static final String DBID = "root";
     static final String DBPW = "1234";
   %>
   <%
     // 0. 드라이버 설치
     // 1. 드라이버 로드
     Class.forName(DRIVER);
     System.out.println(" 드라이버 로드 성공! ");

     // 2. 디비연결 (DB연결정보를 가져오기)
     Connection con = DriverManager.getConnection( DBURL,DBID ,DBPW );
     System.out.println(" 디비 연결 성공! ");
     System.out.println("con : "+con);
     
//      String id = "itwill01";
     String id = request.getParameter("id");
     String pw = request.getParameter("pw");
     
     // 3. SQL 작성 & stmt 객체
//      String sql ="insert into itwill_member values('itwill','1234','사용자1',22,'여','itwill@itwill.com','2022-08-03')";
     //String sql ="insert into itwill_member values('"+id+"','"+pw+"','사용자1',22,'여','itwill@itwill.com','2022-08-03')";
     
     String sql ="insert into itwill_member(id,pw,name,age,gender,email,regdate) values(?,?,?,?,?,?,?)";
     
     // SQL 실행하는 객체
     //Statement stmt = con.createStatement();
     PreparedStatement pstmt = con.prepareStatement(sql);
     
     // ???
//     pstmt.setXXXXX(?위치, 값);	컬럼명의 타입에 따라서 메서드가 변경 
    pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, "홍길동");
	pstmt.setInt(4, 11);
	pstmt.setString(5, "남");
	pstmt.setString(6, "hong@naver.com");
	pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
     
     
     // 4. SQL 실행
     //stmt.executeUpdate(sql);
     pstmt.executeUpdate();
	
     System.out.println("회원가입 완료!");
   
   %>
   
   
   
</body>
</html>