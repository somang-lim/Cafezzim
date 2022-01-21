package com.cafe.gitteam1.reserve;

public class MyPageBookingListVo {
	String cname;
	String caddress;
	String img;
	String rdate;
	int reserve_id;
	int isCancelled;
	
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCaddress() {
		return caddress;
	}
	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getReserve_id() {
		return reserve_id;
	}
	public void setReserve_id(int reserve_id) {
		this.reserve_id = reserve_id;
	}
	public int getIsCancelled() {
		return isCancelled;
	}
	public void setIsCancelled(int isCancelled) {
		this.isCancelled = isCancelled;
	}

	
}
