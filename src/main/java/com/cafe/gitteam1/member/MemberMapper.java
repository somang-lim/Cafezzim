package com.cafe.gitteam1.member;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberMapper {
	// MemberService에서 사용
	public boolean signInCheck(MemberVo vo, HttpSession session);
	public void signOut(HttpSession session);
	
	// xml(SQL)에서 사용
	public String signInCheck(MemberVo vo);	
	public MemberVo viewMember(MemberVo vo);
	
}
