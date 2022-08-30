package com.itwillbs.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDAO {
	// DAO (Data Access Object) : 데이터 처리 객체 
	
	// 공통변수 (인스턴스 변수)
	private Connection con = null; // DB 연결정보 저장
	private PreparedStatement pstmt = null; // DB에 SQL 쿼리 실행 처리 객체
	private ResultSet rs = null; // select 실행 결과 저장 객체
	private String sql = ""; // SQL 쿼리 구문 저장
	
	public BoardDAO() {
		System.out.println(" DAO : DB연결에 관한 모든 정보를 준비완료");
	}
	// DB 연결 
	private Connection getConnect() throws Exception{
		// DB 연결정보
		String DRIVER = "com.mysql.cj.jdbc.Driver";
		String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		String DBID = "root";
		String DBPW = "1234";
		
		// 1. 드라이버로드
		Class.forName(DRIVER);
		System.out.println(" 드라이버로드 성공 ");
		// 2. 디비연결
		con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println(" 디비연결 성공 ");
		System.out.println(" con : " + con);
		
		return con;
	}
	// DB 연결
	
	// 자원 해제
	public void closeDB(){
		try {
			if(rs != null)rs.close(); 
			if(pstmt != null)pstmt.close();
			if(con != null)con.close();
			
			System.out.println("DAO : 자원해제 성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	// 자원 해제
	
	// 글쓰기 - boardWrite()
	public void boardWrite(BoardDTO dto){
		int bno = 0; // 글번호 저장
		
		try {
			// 1. 드라이버로드
			// 2. DB 연결
			con = getConnect();
			// 3. SQL쿼리 작성 &pstmt 객체
			// 게시판 글번호(bno) 계산 (작성된 가장 마지막 번호 + 1)
			
			sql = "select max(bno) from itwill_board";
			pstmt = con.prepareStatement(sql);
			
			// 4. SQL쿼리 실행
			rs = pstmt.executeQuery();
			
			// * 워크벤치 select 결과
			// - 삼각형 커서가 있을 경우 : rs.next() == true
			// - 원형 커서가 있을 경우 : rs.next() == false
			// - 커서가 없을 경우 rs.next() == false
			
			// 5. 데이터 처리 (글번호 계산 : 마지막 번호 +1)
			if(rs.next()){
				// getint() => 컬럼의 값을 리턴, 만약에 값이 sql-null 경우 0 리턴
//				bno = rs.getInt("bno")+1;
//				bno = rs.getInt("max(bno)")+1;
				bno = rs.getInt(1)+1; // 컬럼명이 복잡할 경우 인덱스 번호로 하는 게 더 수월함.
			} 
			
			System.out.println("DAO : 글번호 bno : "+bno);
			
			// 게시판 글쓰기 
			// 3. sql 작성 & pstmt 객체
			sql = "insert into itwill_board(bno, name, pass, subject, content,"
					+"readcount, re_ref, re_lev, re_seq, date, ip, file) "
					+ "values(?,?,?,?,?,?,?,?,?,now(),?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			// ????
			pstmt.setInt(1, bno);
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPass());
			pstmt.setString(4, dto.getSubject());
			pstmt.setString(5, dto.getContent());
			
			pstmt.setInt(6, 0); // 조회수 항상 0
			pstmt.setInt(7, bno); // 답글 그룹번호 == 글번호 (일반글)
			pstmt.setInt(8, 0); // 답글 레벨 0 (일반글)
			pstmt.setInt(9, 0); // 답글 순서 0 (일반글)
			
			pstmt.setString(10, dto.getIp());
			pstmt.setString(11, dto.getFile());
			
			// 4. SQL 실행
			pstmt.executeUpdate();
			
			System.out.println("DAO : 글 작성 완료 ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
	}
	// 글쓰기 - boardWrite()

	
} // class
