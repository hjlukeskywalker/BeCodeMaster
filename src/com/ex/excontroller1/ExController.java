package com.ex.excontroller1;

import java.util.Scanner;

public class ExController {

	public void ex1() {
		//자신의 이름(String), 나이(int), 주소(String), 
		//키(double), 몸무게(double), 성별(char)를 입력
		//받고 출력하는 프로그램을 작성하세요.
//		  *몸무게는 첫째자리까지 출력
//		    키는 정수로 변환하여 출력
		Scanner sc=new Scanner(System.in);
		System.out.println("당신의 이름 : ");
		String name=sc.nextLine();
		//System.out.println(name);
		System.out.print("당신의 나이 : ");
		int age=sc.nextInt();
		//System.out.println(age);
		sc.nextLine();
		System.out.print("주소 : ");
		String address=sc.nextLine();
		//System.out.println(address);
		System.out.print("키 : ");
		double height=sc.nextDouble();
		System.out.print("몸무게 : ");
		double weight=sc.nextDouble();
		System.out.print("성별(M/F) : ");
		//charAt(0); 문자열(String)의 첫글자를 문자(char)로 반환
		char gender=sc.next().charAt(0);
//		  *몸무게는 첫째자리까지 출력 %.1f
//	    키는 정수(int)로 변환하여 출력 -> 강제형 변환 
		//(int)height;
		System.out.printf("%s %d %s %d %.1f %c",
				name,age,address,(int)height,weight,gender);
		
	}
	
}
