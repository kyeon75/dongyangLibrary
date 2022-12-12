package com.view.buy;

import com.view.book.BookDTO;

public class CartDTO {
	private BookDTO book_dto;
	private int book_count;
	public BookDTO getBook_dto() {
		return book_dto;
	}
	public void setBook_dto(BookDTO book_dto) {
		this.book_dto = book_dto;
	}
	public int getBook_count() {
		return book_count;
	}
	public void setBook_count(int book_count) {
		this.book_count = book_count;
	}
}
