package com.cafe.gitteam1.search;

import java.util.List;

public class CafeInfoVo {
	private String cid;
	private String name;
	private String address;
	private String detail;
	private String thumb;
	private String lat;
	private String lng;
	private double distance;
	private int rcnt;
	private float rating;
	private List<ReviewVo> review;
	
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getThumb() {
		return thumb;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	
	public double getDistance() {
		return distance;
	}
	public void setDistance(double distance) {
		this.distance = distance;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	
	public int getRcnt() {
		return rcnt;
	}
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	public List<ReviewVo> getReview() {
		return review;
	}
	public void setReview(List<ReviewVo> review) {
		this.review = review;
	}
	@Override
	public String toString() {
		return "CafeInfoVo [cid=" + cid + ", name=" + name + ", address=" + address + ", detail=" + detail + ", thumb="
				+ thumb + ", lat=" + lat + ", lng=" + lng + ", rating=" + rating + "]";
	}
	
}
