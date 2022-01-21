package com.cafe.gitteam1.search;

public class ReservInfoVo {
	private int rid;
	private int cid;
	private String cname;
	private String mid;
	private int isCancelled;
	private String rdate;
	private String rtime;
	private String rname;
	private String phone;
	private int r4seats;
	private int r2seats;
	private String request;
	private int price;
	private String method;
	private String pdate;
	
	


	public int getRid() {
		return rid;
	}


	public void setRid(int rid) {
		this.rid = rid;
	}
	
	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}
	

	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public int getIsCancelled() {
		return isCancelled;
	}


	public void setIsCancelled(int isCancelled) {
		this.isCancelled = isCancelled;
	}


	public String getRdate() {
		return rdate;
	}


	public void setRdate(String rdate) {
		this.rdate = rdate;
	}


	public String getRtime() {
		return rtime;
	}


	public void setRtime(String rtime) {
		this.rtime = rtime;
	}


	public String getRname() {
		return rname;
	}


	public void setRname(String rname) {
		this.rname = rname;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public int getR4seats() {
		return r4seats;
	}


	public void setR4seats(int r4seats) {
		this.r4seats = r4seats;
	}


	public int getR2seats() {
		return r2seats;
	}


	public void setR2seats(int r2seats) {
		this.r2seats = r2seats;
	}


	public String getRequest() {
		return request;
	}


	public void setRequest(String request) {
		this.request = request;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getMethod() {
		return method;
	}


	public void setMethod(String method) {
		this.method = method;
	}


	public String getPdate() {
		return pdate;
	}


	public void setPdate(String pdate) {
		this.pdate = pdate;
	}


	@Override
	public String toString() {
		return "ReservInfoVo [rid=" + rid + ", cid=" + cid + ", cname=" + cname + ", mid=" + mid + ", isCancelled="
				+ isCancelled + ", rdate=" + rdate + ", rtime=" + rtime + ", rname=" + rname + ", phone=" + phone
				+ ", r4seats=" + r4seats + ", r2seats=" + r2seats + ", request=" + request + ", price=" + price
				+ ", method=" + method + ", pdate=" + pdate + "]";
	}

}
