package com.cafe.gitteam1.mypage_cafe;

public class mpcafe_listVo {
	String file_path;
	String search_name;
	int scname_id;
	String menu_name;
	int menu_price;
	int menu_type;

	//setter getter
	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	public String getSearch_name() {
		return search_name;
	}

	public void setSearch_name(String search_name) {
		this.search_name = search_name;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public int getMenu_price() {
		return menu_price;
	}

	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}

	public int getMenu_type() {
		return menu_type;
	}

	public void setMenu_type(int menu_type) {
		this.menu_type = menu_type;
	}

	public int getScname_id() {
		return scname_id;
	}

	public void setScname_id(int scname_id) {
		this.scname_id = scname_id;
	}

}
