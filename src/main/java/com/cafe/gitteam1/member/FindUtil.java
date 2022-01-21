package com.cafe.gitteam1.member;

import java.util.UUID;

public class FindUtil {

	public static String getNewPassword() throws Exception {
		String tempPw = UUID.randomUUID().toString().replaceAll("-", "");
		tempPw = tempPw.substring(0, 10);

		System.out.println("임시 비밀번호 확인 : " + tempPw);

		return tempPw;
	}
}