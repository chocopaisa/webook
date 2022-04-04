package com.webook.domain;

public class OrderItemVO {
	private String order_item_no;
	private String order_no;
	private String product_no;
	private int order_cnt;
	private int total_price;
	private int discount_price;
	public String getOrder_item_no() {
		return order_item_no;
	}
	public void setOrder_item_no(String order_item_no) {
		this.order_item_no = order_item_no;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public int getOrder_cnt() {
		return order_cnt;
	}
	public void setOrder_cnt(int order_cnt) {
		this.order_cnt = order_cnt;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public int getDiscount_price() {
		return discount_price;
	}
	public void setDiscount_price(int discount_price) {
		this.discount_price = discount_price;
	}
	
	
}
