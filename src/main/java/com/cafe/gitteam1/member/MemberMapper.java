package com.cafe.gitteam1.member;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberMapper {
	public boolean signInCheck(MemberVo vo, HttpSession session);
	
	public String signInCheck(MemberVo vo);
	
	public MemberVo viewMember(MemberVo vo);
	
	public void signOut(HttpSession session);
}
