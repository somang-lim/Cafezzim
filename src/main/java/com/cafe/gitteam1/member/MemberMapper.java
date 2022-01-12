package com.cafe.gitteam1.member;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberMapper {
	public String searchId(MemberVo vo);
	public String signInCheck(MemberVo vo);	
	public MemberVo viewMember(MemberVo vo);
	public String searchPw(MemberVo vo);
	public boolean changePw(String newPwd, String member_id);
	
	
}
