package com.itwillbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.db.BoardDAO;
import com.itwillbs.db.BoardDTO;

public class BoardWriteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								 HttpServletResponse response) throws Exception {
		
		// pro 페이지의 역할
		System.out.println(" M : BoardWriteAction_execute() 호출 ");
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		// 전달정보 저장(제목, 비밀번호, 이름, 내용)
		// BoardDTO 객체 생성
		BoardDTO dto = new BoardDTO(); // 변수선언하지 않고 바로 객체로 저장하기
		
		dto.setName(request.getParameter("name"));
		dto.setPass(request.getParameter("pass"));
		dto.setSubject(request.getParameter("subject"));
		dto.setContent(request.getParameter("content"));
		
		System.out.println(" M : "+dto);
		
		// DB에 정보 저장
		// BoardDAO 객체 생성
		BoardDAO dao = new BoardDAO();
		
		// DB에 글정보를 저장
		dao.boardWrite(dto); 
		
		// 페이지 이동정보 저장 (리턴)
		ActionForward forward = new ActionForward();
		forward.setPath("./BoardList.bo");
		forward.setRedirect(true); // t- sendRedirect() , f- forward()
		
		return forward;
	}



	
	
	
}
