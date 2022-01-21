package com.cafe.gitteam1.reserve;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Service
@Transactional
public class MyPageBookingListService {
	
	@Autowired
	MyPageBookingListMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager; 
	
	TransactionStatus status;
	
	
	
	// 예약리스트 표시 
	public List<MyPageBookingListVo> bookingList(String id, String nowDate) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		List<MyPageBookingListVo> listVo = mapper.myPageBookingList(id, nowDate);

		
		return listVo;
	}

	// 이전 예약리스트 표시 
	public List<MyPageBookingListVo> pastBookingList(String id, String nowDate) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		List<MyPageBookingListVo> listVo = mapper.myPagePastBookingList(id, nowDate);

		
		return listVo;
	}
	
	// 예약내역 검색  
	public List<MyPageBookingListVo> bookingListSearch(String id, String findStr) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		List<MyPageBookingListVo> listVo = mapper.bookingListSearch(id, findStr);

		
		return listVo;
	}
	
	// 예약 삭제  
	public void delClick(String rid) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		mapper.delClick(rid);

		
	}
}
