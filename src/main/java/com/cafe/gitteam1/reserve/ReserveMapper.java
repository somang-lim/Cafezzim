package com.cafe.gitteam1.reserve;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.cafe.gitteam1.search.CafeInfoVo;
import com.cafe.gitteam1.search.MenuVo;

@Mapper
@Repository
public interface ReserveMapper {
//	// MemberService에서 사용
	public boolean reserveResult(ReserveVo vo);
	public List<MenuVo> orderMenu(String cid);
	public CafeInfoVo viewCafe(String cid);

//	public void signOut(HttpSession session);
//	
//	// xml(SQL)에서 사용
	//public ReserveVo reserveResultXml(ReserveVo vo);
//	public PayVo viewMember(PayVo vo);
	
}
