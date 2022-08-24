package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8088/JSP6/busan.com
// ctrl + alt + r 서버만 실행

public class ItwillServlet extends HttpServlet {
	// alt + shift + s + v
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	// 사용자가 GET 방식으로 호출할 때 실행되는 메서드
	response.getWriter().append("ITWILL BUSAN");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	// 사용자가 POSt 방식으로 호출할 때 실행되는 메서드 
	}
	
}

