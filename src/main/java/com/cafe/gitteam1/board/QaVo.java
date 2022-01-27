package com.cafe.gitteam1.board;

import java.util.Date;

public class QaVo {
	private int qa_serial;
	
	private String member_id;
	
	private String member_name;
	
	private String subject;
	
	private String content;
	
	private Date created_date;
	
	private boolean isSecret;
	
	private int grpno;
	
	private int grpord;
	
	private int depth;

	
	public int getQa_serial() {
		return qa_serial;
	}
	public void setQa_serial(int qa_serial) {
		this.qa_serial = qa_serial;
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
	public boolean isSecret() {
		return isSecret;
	}
	public void setSecret(boolean isSecret) {
		this.isSecret = isSecret;
	}
	public int getGrpno() {
		return grpno;
	}
	public void setGrpno(int grpno) {
		this.grpno = grpno;
	}
	public int getGrpord() {
		return grpord;
	}
	public void setGrpord(int grpord) {
		this.grpord = grpord;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	
	@Override
	public String toString() {
		return "QaVo [qa_serial=" + qa_serial + ", member_id=" + member_id + ", member_name=" + member_name
				+ ", subject=" + subject + ", content=" + content + ", created_date=" + created_date + ", isSecret="
				+ isSecret + ", grpno=" + grpno + ", grpord=" + grpord + ", depth=" + depth + "]";
	}
	
}
