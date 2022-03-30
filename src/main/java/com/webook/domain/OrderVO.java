package com.webook.domain;

public class OrderVO {
	private String order_no;
	private String user_email;
	private String payment_method;
	private int delivery_fee;
	private String delivery_place;
	private String delivery_requirements;
	private String payment_date;
	private String delivery_info;
	private String tracking_number;
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public int getDelivery_fee() {
		return delivery_fee;
	}
	public void setDelivery_fee(int delivery_fee) {
		this.delivery_fee = delivery_fee;
	}
	public String getDelivery_place() {
		return delivery_place;
	}
	public void setDelivery_place(String delivery_place) {
		this.delivery_place = delivery_place;
	}
	public String getDelivery_requirements() {
		return delivery_requirements;
	}
	public void setDelivery_requirements(String delivery_requirements) {
		this.delivery_requirements = delivery_requirements;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public String getDelivery_info() {
		return delivery_info;
	}
	public void setDelivery_info(String delivery_info) {
		this.delivery_info = delivery_info;
	}
	public String getTracking_number() {
		return tracking_number;
	}
	public void setTracking_number(String tracking_number) {
		this.tracking_number = tracking_number;
	}
	
	
	
}
