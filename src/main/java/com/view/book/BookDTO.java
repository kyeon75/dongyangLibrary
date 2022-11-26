package com.view.book;
/* 책의 정보에 대한 DTO
 * 디스코드 정보방에 txt파일 참고했음.
 * */
public class BookDTO {
	private String imgSrc;
	private String name;
	private int price;
	private String description;
	private int discount;
	private int tdayView;
	private int totalView;
	
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getTdayView() {
		return tdayView;
	}
	public void setTdayView(int tdayView) {
		this.tdayView = tdayView;
	}
	public int getTotalView() {
		return totalView;
	}
	public void setTotalView(int totalView) {
		this.totalView = totalView;
	}
}
