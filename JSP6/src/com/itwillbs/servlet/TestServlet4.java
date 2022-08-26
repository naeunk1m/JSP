package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test4")
public class TestServlet4 extends HttpServlet{

	// http://localhost:8088/JSP6/test4
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		// Phone
		Phone Apple = new Phone();
		Apple.setModel("IPHONE 14 PRO PLUS");
		Apple.setColor("SPACE GRAY");
		Apple.setPrice(200);
		
		// 사람 정보 생성
		Person kim = new Person();
		kim.setName("김학생");
		kim.setAge(20);
		kim.setPhone(Apple);
		
		// 사람의 정보를 Beans.jsp 생성해서 정보전달 후 출력
		request.setAttribute("kim", kim);
		 
		// 페이지 이동 (forward)
		RequestDispatcher dis
		= request.getRequestDispatcher("servlet/Beans.jsp");
		
		dis.forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	}
	
	
}
