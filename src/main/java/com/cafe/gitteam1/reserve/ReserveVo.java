package com.cafe.gitteam1.reserve;

public class ReserveVo {
int reseve_id;// auto_increament
int cafe_id;
String member_id;
String isCancelled;
String reserve_date;
String reserve_time;
String reserve_name;
String reserve_phone;
int reserve_4seats;
int reserve_2seats;
String request;
// 결제정보
int payment_price;
String payment_method;
String payment_date;

// 게터 세터 
public int getReseve_id() {
	return reseve_id;
}
public void setReseve_id(int reseve_id) {
	this.reseve_id = reseve_id;
}
public int getCafe_id() {
	return cafe_id;
}
public void setCafe_id(int cafe_id) {
	this.cafe_id = cafe_id;
}
public String getMember_id() {
	return member_id;
}
public void setMember_id(String member_id) {
	this.member_id = member_id;
}
public String getIsCancelled() {
	return isCancelled;
}
public void setIsCancelled(String isCancelled) {
	this.isCancelled = isCancelled;
}
public String getReserve_date() {
	return reserve_date;
}
public void setReserve_date(String reserve_date) {
	this.reserve_date = reserve_date;
}
public String getReserve_time() {
	return reserve_time;
}
public void setReserve_time(String reserve_time) {
	this.reserve_time = reserve_time;
}
public String getReserve_name() {
	return reserve_name;
}
public void setReserve_name(String reserve_name) {
	this.reserve_name = reserve_name;
}
public String getReserve_phone() {
	return reserve_phone;
}
public void setReserve_phone(String reserve_phone) {
	this.reserve_phone = reserve_phone;
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
public String getRequest() {
	return request;
}
public void setRequest(String request) {
	this.request = request;
}
public int getPayment_price() {
	return payment_price;
}
public void setPayment_price(int payment_price) {
	this.payment_price = payment_price;
}
public String getPayment_method() {
	return payment_method;
}
public void setPayment_method(String payment_method) {
	this.payment_method = payment_method;
}
public String getPayment_date() {
	return payment_date;
}
public void setPayment_date(String payment_date) {
	this.payment_date = payment_date;
}


}
