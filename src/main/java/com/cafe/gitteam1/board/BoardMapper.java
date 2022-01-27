package com.cafe.gitteam1.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface BoardMapper {
	public Integer totSize(String notice_search);
	public List<NoticeVo> notice_search(Page p);
	public List<NoticePhotoVo> notice_show_file(String notice_serial);
	
	public int notice_insert(NoticeVo vo);
	public int last_insert_id();
	public int notice_insert_photo(NoticePhotoVo nvo);
	
	public NoticeVo notice_view(String notice_serial); 
	
	public int notice_modify(NoticeVo vo);
	public int notice_delete_photo(String notice_file);
	
	public int notice_delete(String notice_serial);
	public int notice_delete_file(String notice_serial);
}
