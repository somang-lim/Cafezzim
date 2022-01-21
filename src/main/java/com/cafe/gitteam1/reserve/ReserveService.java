package com.cafe.gitteam1.reserve;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.cafe.gitteam1.search.CafeInfoVo;
import com.cafe.gitteam1.search.MenuVo;

@Service
@Transactional
public class ReserveService {
	
	@Autowired
	ReserveMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager; 
	
	TransactionStatus status;
	
	
	
	// 결재 완료시 예약내용 표시 
	public boolean reserveResult(ReserveVo vo) {
		boolean b=false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
		boolean c = mapper.reserveResult(vo);

		//ReserveVo resultVo = mapper.reserveResult(vo);
		if(c) {
			manager.commit(status);
			b=true;
		}else {
			manager.rollback(status);
		}
		
		return b;

	}
	
	// 카페 이름 표시 
	public CafeInfoVo viewCafe(String cid) {
		CafeInfoVo vo = mapper.viewCafe(cid);
		
		return vo;
	}	
	// 메뉴 표시 
	public List<MenuVo> orderMenu(String cid) {
		List<MenuVo> list = mapper.orderMenu(cid);
		return list;
	}
//	
//	public void signOut(HttpSession session) {
//		session.invalidate();
//	}
}
