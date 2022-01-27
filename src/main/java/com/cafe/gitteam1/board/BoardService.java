package com.cafe.gitteam1.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Service
@Transactional
public class BoardService {

	@Autowired
	BoardMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager;
	
	TransactionStatus status;
	Page page;
	
	public List<NoticeVo> notice_search(Page p){
		List<NoticeVo> list = null;
		
		int totSize = mapper.totSize(p.getNotice_search());
		p.setTotSize(totSize);
		this.page = p;
		
		list = mapper.notice_search(p);
		
		return list;
	}
	
	public NoticeVo notice_view(String notice_serial) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		NoticeVo vo = null;
		List<NoticePhotoVo> notice_file_list = null;
		
		try {
			vo = mapper.notice_view(notice_serial);
			notice_file_list = mapper.notice_show_file(notice_serial);
			vo.setNotice_files(notice_file_list);
			
			manager.commit(status);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean notice_insert(NoticeVo vo) {
		boolean isInsert = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		int c = mapper.notice_insert(vo);
		
		if(c > 0) {
			manager.commit(status);
			isInsert = true;
			
		} else {
			manager.rollback(status);
		}
		return isInsert;
	}
	
	public int notice_last_insert_id() {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		int last_id = mapper.last_insert_id();
		
		if(last_id > 0) {
			manager.commit(status);
		}
		return last_id;
	}
	
	public boolean notice_insert_photo(NoticeVo vo) {
		boolean isInsertPhoto = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		int c = 0;
		
		try {
			// 배열로 저장된 내용이 DB에 저장된다.
			for(NoticePhotoVo nvo : vo.getNotice_files()) {
				c += mapper.notice_insert_photo(nvo);
			}
			
			if(c == vo.getNotice_files().size()) {
				manager.commit(status);
				isInsertPhoto = true;
			} else {
				manager.rollback(status);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isInsertPhoto;
	}
	
	public boolean notice_modify(NoticeVo vo) {
		boolean isModify = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		int c = mapper.notice_modify(vo);
		
		if(c > 0) {
			manager.commit(status);
			isModify = true;
		} else {
			manager.rollback(status);
		}
		return isModify;
	}
	
	public boolean notice_delete_photo(String notice_file) {
		boolean isDelete = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		int c = mapper.notice_delete_photo(notice_file);
		
		if(c > 0) {
			manager.commit(status);
			isDelete = true;
		} else {
			manager.rollback(status);
		}
		return isDelete;
	}
	
	public boolean notice_delete(String notice_serial) {
		boolean isDelete = false;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		int c = mapper.notice_delete(notice_serial);
		
		if(c > 0) {
			manager.commit(status);
			isDelete = true;
		} else {
			manager.rollback(status);
		}
		return isDelete;
	}
	
	public boolean notice_delete_file(String notice_serial) {
		boolean isDeleteFile = false;
		int c = mapper.notice_delete_file(notice_serial);
		
		if(c > 0) {
			isDeleteFile = true;
		}
		return isDeleteFile;
	}
	
	public Page getPage() {
		return page;
	}
	
	public void setPage(Page page) {
		this.page = page;
	}
}
