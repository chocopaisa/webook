package com.webook.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {

	String product_no;
	String product_name;
	int product_price;
	String product_desc;
	int product_cnt;
	int product_sale;
	String genre_no;
	String product_writer;
	String product_publisher;
	String product_image;
	String product_desc_image;
	String product_date;
	String product_lang;
	
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 실제로 저장되는 파일명 만들기
		UUID uuid = UUID.randomUUID();
		product_desc_image = uuid.toString();
		
		// 파일 업로드 작업
		if( !file.isEmpty()) {
			this.product_desc_image = file.getOriginalFilename();
			
		// 실제로 저장 : File => 자바에서 파일과 디렉토리를 생성,삭제,관리하는 클래스
		File f= new File("C:\\spring\\webwork\\webook\\src\\main\\webapp\\resources\\images\\shop\\product-desc-img\\" + product_desc_image);
			System.out.println("product_desc_image:"+product_desc_image);
			
			
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
	
		}
		
		
	}

	
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public int getProduct_cnt() {
		return product_cnt;
	}
	public void setProduct_cnt(int product_cnt) {
		this.product_cnt = product_cnt;
	}
	public int getProduct_sale() {
		return product_sale;
	}
	public void setProduct_sale(int product_sale) {
		this.product_sale = product_sale;
	}
	public String getGenre_no() {
		return genre_no;
	}
	public void setGenre_no(String genre_no) {
		this.genre_no = genre_no;
	}
	public String getProduct_writer() {
		return product_writer;
	}
	public void setProduct_writer(String product_writer) {
		this.product_writer = product_writer;
	}
	public String getProduct_publisher() {
		return product_publisher;
	}
	public void setProduct_publisher(String product_publisher) {
		this.product_publisher = product_publisher;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public String getProduct_desc_image() {
		return product_desc_image;
	}
	public void setProduct_desc_image(String product_desc_image) {
		this.product_desc_image = product_desc_image;
	}
	public String getProduct_date() {
		return product_date;
	}
	public void setProduct_date(String product_date) {
		this.product_date = product_date;
	}
	public String getProduct_lang() {
		return product_lang;
	}
	public void setProduct_lang(String product_lang) {
		this.product_lang = product_lang;
	} 
	
	
	
	
}
