package com.cafe.gitteam1.board;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NoticeVo {
	private int notice_serial;

	private String member_id;
	
	private String member_name;
	
	private String subject;
	
	private String content;
	
	private Date created_date;
	
	// 첨부파일, summernote 이미지 list 추가
	private List<NoticePhotoVo> notice_files = new ArrayList<NoticePhotoVo>();
	
	private int file_cnt;
	
	
	public int getNotice_serial() {
		return notice_serial;
	}
	public void setNotice_serial(int notice_serial) {
		this.notice_serial = notice_serial;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	public List<NoticePhotoVo> getNotice_files() {
		return notice_files;
	}
	public void setNotice_files(List<NoticePhotoVo> notice_files) {
		this.notice_files = notice_files;
	}
	
	public int getFile_cnt() {
		return file_cnt;
	}
	public void setFile_cnt(int file_cnt) {
		this.file_cnt = file_cnt;
	}
	
	@Override
	public String toString() {
		return "NoticeVo [notice_serial=" + notice_serial + ", member_id=" + member_id + ", member_name=" + member_name
				+ ", subject=" + subject + ", content=" + content + ", created_date=" + created_date + ", notice_files="
				+ notice_files + ", file_cnt=" + file_cnt + "]";
	}
	
}
