package com.cafe.gitteam1.search;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Service
@Transactional
public class SearchService {
	
	SearchMapper mapper;
	PlatformTransactionManager manager;
	TransactionStatus status;
	
	@Autowired
	public SearchService(SearchMapper mapper,PlatformTransactionManager manager) {
		this.mapper = mapper;
		this.manager = manager;
	}
	
	public List<CafeInfoVo> cafeSearch(SearchVo search) {
		List<CafeInfoVo> list = null;
		
		list = mapper.cafeSearch(search);
		
		return list;
	}
	
	public List<String> cafeFindName(String findStr){
		List<String> list = mapper.cafeFindName(findStr);
		Set<String> joined = mapper.cafeFindLocation(findStr);
		
		list.addAll(joined);
		
		return list;
	}
	
	public CafeInfoVo viewCafe(String cid) {
		CafeInfoVo vo = mapper.viewCafe(cid);
		
		return vo;
	}
	
	public List<ReviewVo> viewReview(String cid) {
		List<ReviewVo> list = mapper.viewReview(cid);
		
		return list;
	}
	
	public List<MenuVo> viewMenu(String cid){
		List<MenuVo> list = mapper.viewMenu(cid);
		
		return list;
	}
	
	public ReservInfoVo viewReserv(String rid) {
		ReservInfoVo vo = mapper.viewReserv(rid);
		
		
		return vo;
	}
	
	public List<MenuVo> viewReservMenu(String rid) {
		List<MenuVo> menu = mapper.viewReservMenu(rid);
		return menu;
	}
	
	public boolean insertReview(ReviewVo vo) throws Exception {
		boolean b = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
		int c = mapper.insertReview(vo);
		
		if(c>0) {
			manager.commit(status);
			b = true;
		} else {
			manager.rollback(status);
			throw new Exception();
		}
		
		return b;
	}
	
	public boolean zzimIns(ZzimVo vo) throws Exception {
		boolean b = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
		int c = mapper.zzimIns(vo);
		
		if(c>0) {
			manager.commit(status);
			b = true;
		} else {
			manager.rollback(status);
			throw new Exception();
		}
		
		return b;
	}
	
	public boolean zzimDel(ZzimVo vo) throws Exception {
		boolean b = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
		int c = mapper.zzimDel(vo);
		
		if(c>0) {
			manager.commit(status);
			b = true;
		} else {
			manager.rollback(status);
			throw new Exception();
		}
		
		return b;
	}
	
	public String zzimCafe(ZzimVo vo) {
		String className = mapper.zzimCafe(vo);
		
		return className;
	}

}
