package com.ex.excontroller1;

import java.util.Scanner;

public class ExController {

	public void ex1() {
		//�ڽ��� �̸�(String), ����(int), �ּ�(String), 
		//Ű(double), ������(double), ����(char)�� �Է�
		//�ް� ����ϴ� ���α׷��� �ۼ��ϼ���.
//		  *�����Դ� ù°�ڸ����� ���
//		    Ű�� ������ ��ȯ�Ͽ� ���
		Scanner sc=new Scanner(System.in);
		System.out.println("����� �̸� : ");
		String name=sc.nextLine();
		//System.out.println(name);
		System.out.print("����� ���� : ");
		int age=sc.nextInt();
		//System.out.println(age);
		sc.nextLine();
		System.out.print("�ּ� : ");
		String address=sc.nextLine();
		//System.out.println(address);
		System.out.print("Ű : ");
		double height=sc.nextDouble();
		System.out.print("������ : ");
		double weight=sc.nextDouble();
		System.out.print("����(M/F) : ");
		//charAt(0); ���ڿ�(String)�� ù���ڸ� ����(char)�� ��ȯ
		char gender=sc.next().charAt(0);
//		  *�����Դ� ù°�ڸ����� ��� %.1f
//	    Ű�� ����(int)�� ��ȯ�Ͽ� ��� -> ������ ��ȯ 
		//(int)height;
		System.out.printf("%s %d %s %d %.1f %c",
				name,age,address,(int)height,weight,gender);
		
	}
	
}
