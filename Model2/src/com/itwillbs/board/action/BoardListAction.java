package com.itwillbs.board.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.board.db.BoardDAO;
import com.itwillbs.board.db.BoardDTO;

public class BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : BoardListAction_execute() 호출");
		
		// BoardDAO 객체 생성
		BoardDAO dao = new BoardDAO();
		
		// dao 메서드 중에서  게시판 글정보를 모두 가져오는 메서드 호출
		List<BoardDTO> boardList = dao.getBoardList(); 
		
		System.out.println(" M : 게시판 글정보 저장완료! ");
		
		// view 페이지 정보 전달을 위해서 request 영역에 저장
		request.setAttribute("boardList", boardList);
		
		// 화면에 출력
		// 페이지 이동(화면 전환)
		ActionForward forward = new ActionForward();
		forward.setPath("./board/boardListAll.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
