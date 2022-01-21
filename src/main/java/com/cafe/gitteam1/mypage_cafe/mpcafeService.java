package com.cafe.gitteam1.mypage_cafe;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.cafe.gitteam1.mypage_cafe.mpcafeVo;
import com.cafe.gitteam1.mypage_cafe.dayoffVo;
import com.cafe.gitteam1.mypage_cafe.mpcafe_listVo;


@Service
@Transactional
public class mpcafeService {
	@Autowired
	mpcafeMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager;
	TransactionStatus status;
	String findStr;
	String cafe_id;
	mpcafeVo vo;
	
	public List<mpcafeVo> search(String findStr){
		List<mpcafeVo> list = null;
		list = mapper.search(findStr);
		
		return list;
		
	}
	
	public mpcafeVo dayoffSelect(String cafe_id){
		mpcafeVo vo = null;
		vo = mapper.view(cafe_id);
		List<dayoffVo> offlist = null;
		offlist = mapper.dayoffSelect(cafe_id);
		vo.setOfflist(offlist);
		
		return vo;
		
	}
	
	public mpcafeVo view(String cafe_id) { //cafe_id를 사용해서 호출
		status = manager.getTransaction(new DefaultTransactionDefinition());
		mpcafeVo vo = null;
		List<mpcafe_listVo> otherphotos = null;
		List<mpcafe_listVo> cafesearch = null;
		List<mpcafe_listVo> menu = null;
			
		try {
			vo = mapper.view(cafe_id);
			otherphotos = mapper.otherphotos(cafe_id);
			cafesearch = mapper.cafesearch(cafe_id);
			menu = mapper.menu(cafe_id);
			vo.setOtherphotos(otherphotos);
			vo.setCafesearch(cafesearch);
			vo.setMenu(menu);
			

		}catch(Exception ex) {
			ex.printStackTrace();
			
		}return vo;
	}
	
	public boolean modify(mpcafeVo vo) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		boolean b = false;
		Object savePoint = null;
		mpcafe_listVo lvo = null;
		
	try {
		savePoint = status.createSavepoint();
		int c = mapper.modify(vo); //기본카페정보만 수정
		
		if(c>0) { //기본카페정보가 수정되면
			
			/*다른 테이블값 수정
			for(String i: vo.scnList){ //여기서 반복실행이 필요함.. 뭘기준으로 할지.lvo도 세번 업데이트
				for(Integer j: vo.scnidList) {
					lvo.setSearch_name(i);
					lvo.setScname_id(j);
					
					System.out.println(i);
					System.out.println(j);
					
					mapper.scnmodify(lvo);
				}
			}
			*/
			
			manager.commit(status);
			b=true;
			
			}else {
				status.rollbackToSavepoint(savePoint);
			}
	}catch(Exception ex) {
		ex.printStackTrace();
	}
	return b;
	}
	
	public boolean insertOff(dayoffVo dvo) {
		boolean b = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
			int c = mapper.insertOff(dvo);
			if(c>0) {
				manager.commit(status);
				b = true;
			}else {
				manager.rollback(status);
			}

		return b;
		
	}
	
	public boolean deleteOff(String off_id) {
		boolean b = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
		int c = mapper.deleteOff(off_id);
		if(c>0) {
			manager.commit(status);
			b = true;
		}else {
			manager.rollback(status);
		
		}
		return b;
		
	}


}
