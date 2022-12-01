package com.view.book;
/* 책의 정보에 대한 DTO
 * 디스코드 정보방에 txt파일 참고했음.
 * */
public class BookDTO {
	private String book_id;
	private String img_src;
	private String book_title;
	private int price;
	private String description;
	private String publisher;
	private int discount;
	private int tday_view;
	private int tday_buy;
	private String category;
	
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public String getImg_src() {
		return img_src;
	}
	public void setImg_src(String img_src) {
		this.img_src = img_src;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getTday_view() {
		return tday_view;
	}
	public void setTday_view(int tday_view) {
		this.tday_view = tday_view;
	}
	public int getTday_buy() {
		return tday_buy;
	}
	public void setTday_buy(int tday_buy) {
		this.tday_buy = tday_buy;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	
}
