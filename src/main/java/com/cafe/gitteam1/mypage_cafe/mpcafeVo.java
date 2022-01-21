package com.cafe.gitteam1.mypage_cafe;

import java.util.ArrayList;
import java.util.List;

public class mpcafeVo {
	
	private int cafe_id;
	private String cafe_name;
	private String cafe_address;
	private String title_photo;
	private String cafe_detail;
	String[] search_name;
	Integer[] scname_id;
	List<String> scnList = new ArrayList<String>();
	List<Integer> scnidList = new ArrayList<Integer>();
	
	List<mpcafe_listVo> otherphotos = new ArrayList<mpcafe_listVo>();
	List<mpcafe_listVo> cafesearch = new ArrayList<mpcafe_listVo>();
	
	private int reserve_4seats;
	private int reserve_2seats;
	
	List<mpcafe_listVo> menu = new ArrayList<mpcafe_listVo>();
	
	private String start_time;
	private String end_time;
	private int avail_4seats;
	private int avail_2seats;
	
	List<dayoffVo> offlist = new ArrayList<dayoffVo>();
	
	
	//getter setter
	public int getCafe_id() {
		return cafe_id;
	}
	public void setCafe_id(int cafe_id) {
		this.cafe_id = cafe_id;
	}
	public String getCafe_name() {
		return cafe_name;
	}
	public void setCafe_name(String cafe_name) {
		this.cafe_name = cafe_name;
	}
	public String getCafe_address() {
		return cafe_address;
	}
	public void setCafe_address(String cafe_address) {
		this.cafe_address = cafe_address;
	}
	public String getTitle_photo() {
		return title_photo;
	}
	public void setTitle_photo(String title_photo) {
		this.title_photo = title_photo;
	}
	public String getCafe_detail() {
		return cafe_detail;
	}
	public void setCafe_detail(String cafe_detail) {
		this.cafe_detail = cafe_detail;
	}
	public int getReserve_4seats() {
		return reserve_4seats;
	}
	public void setReserve_4seats(int reserve_4seats) {
		this.reserve_4seats = reserve_4seats;
	}
	public int getReserve_2seats() {
		return reserve_2seats;
	}
	public void setReserve_2seats(int reserve_2seats) {
		this.reserve_2seats = reserve_2seats;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public int getAvail_4seats() {
		return avail_4seats;
	}
	public void setAvail_4seats(int avail_4seats) {
		this.avail_4seats = avail_4seats;
	}
	public int getAvail_2seats() {
		return avail_2seats;
	}
	public void setAvail_2seats(int avail_2seats) {
		this.avail_2seats = avail_2seats;
	}	
	public List<mpcafe_listVo> getOtherphotos() {
		return otherphotos;
	}
	public void setOtherphotos(List<mpcafe_listVo> otherphotos) {
		this.otherphotos = otherphotos;
	}
	public List<mpcafe_listVo> getCafesearch() {
		return cafesearch;
	}
	public void setCafesearch(List<mpcafe_listVo> cafesearch) {
		this.cafesearch = cafesearch;
	}

	public List<mpcafe_listVo> getMenu() {
		return menu;
	}
	public void setMenu(List<mpcafe_listVo> menu) {
		this.menu = menu;
	}

	public List<String> getScnList() {
		return scnList;
	}
	public void setScnList(List<String> scnList) {
		this.scnList = scnList;
	}
	public List<Integer> getScnidList() {
		return scnidList;
	}
	public void setScnidList(List<Integer> scnidList) {
		this.scnidList = scnidList;
	}
	public String[] getSearch_name() {
		return search_name;
	}
	public void setSearch_name(String[] search_name) {
		this.search_name = search_name;
	}
	public Integer[] getScname_id() {
		return scname_id;
	}
	public void setScname_id(Integer[] scname_id) {
		this.scname_id = scname_id;
	}
	public List<dayoffVo> getOfflist() {
		return offlist;
	}
	public void setOfflist(List<dayoffVo> offlist) {
		this.offlist = offlist;
	}



}
