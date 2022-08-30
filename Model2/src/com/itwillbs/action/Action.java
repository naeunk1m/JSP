package com.itwillbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	// 변수 x, 상수 o
	// 인스턴스 메서드x, 추상메서드o
	// => 상속을 통해서 추상메서드를 오버라이딩 사용 (강제성)
	
	
	/**
	 * 추상메서드이며, 반드시 오버라이딩해서 사용해야 함.
	 * 실행할 때 request와 response 정보를 매개변수로 전달해야만 호출이 가능.
	 * 호출이 완료되면 ActionForward(주소, 방식이 담긴 객체(?)) 라는 정보를 리턴
	 * 
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward execute(HttpServletRequest request, 
								 HttpServletResponse response) throws Exception;
	
}
