package com.webook.domain;

import java.util.ArrayList;

// 상품 리스트 (카트 -> 결제시 사용)
public class ProductList {
	ArrayList<ProductVO> list;

	public ArrayList<ProductVO> getList() {
		return list;
	}

	public void setList(ArrayList<ProductVO> list) {
		this.list = list;
	}
	
	
}
