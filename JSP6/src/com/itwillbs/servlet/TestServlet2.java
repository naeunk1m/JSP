package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

public class TestServlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGET() 호출");
		doPost(request, response);
	}

	// http://localhost:8088/JSP6/test2	
	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPOST() 호출");
		
		// request 영역에 정보 저장
		request.setAttribute("cnt", 1000);
		
		//session 영역에 정보 저장 sCnt - 2000 => 자바페이지이므로 세션 사용 금지 , request는 받아온 것으로 사용 가능
		// session 객체 정보가 없음(JAVA파일)
		
		// session 객체 생성
		HttpSession session = request.getSession();
		
		session.setAttribute("cnt", new Integer(2000));
		
		
		
		// servlet/Attribute.jsp 페이지 이동(forward)
		RequestDispatcher dis 
		= request.getRequestDispatcher("servlet/Attribute.jsp");
		
		dis.forward(request, response);
	
	}

	
	
}
