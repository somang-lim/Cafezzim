package com.cafe.gitteam1.board;

public class NoticePhotoVo {
	private int photo_serial;
	
	private String notice_file;
	
	private int notice_serial;

	
	public int getPhoto_serial() {
		return photo_serial;
	}
	public void setPhoto_serial(int photo_serial) {
		this.photo_serial = photo_serial;
	}
	public String getNotice_file() {
		return notice_file;
	}
	public void setNotice_file(String notice_file) {
		this.notice_file = notice_file;
	}
	public int getNotice_serial() {
		return notice_serial;
	}
	public void setNotice_serial(int notice_serial) {
		this.notice_serial = notice_serial;
	}

	@Override
	public String toString() {
		return "NoticePhotoVo [photo_serial=" + photo_serial + ", notice_file=" + notice_file + ", notice_serial="
				+ notice_serial + "]";
	}
	
}
