package com.itwillbs.test;

public class MainClass2 {

	public static void main(String[] args) {
		
		Student kim = new Student();
		kim.setName("김학생");
		kim.setKor(88);
		kim.setEng(78);
		kim.setMath(93);
		
		
		Cal c = new Cal();
		System.out.println( c.sum(kim) );
		c.avg(kim);
		
		

	}

}
