package com.view.buy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.book.BookDAO;
import com.view.book.BookDTO;


@WebServlet("/CartInsert")
public class CartInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain"); //text 타입을 응답함
		HttpSession session = request.getSession();
		String book_id = request.getParameter("book_id");
		String book_count = request.getParameter("book_count");
		
		BookDAO book_dao = new BookDAO();
		BookDTO book_dto = book_dao.selectBook(book_id);
		
		CartDTO cart_dto = new CartDTO();
		cart_dto.setBook_dto(book_dto);
		cart_dto.setBook_count(Integer.parseInt(book_count));
		
		ArrayList<CartDTO> cartList = new ArrayList<CartDTO>();
		
		//원래 있던 cartList에 합침
		if (session.getAttribute("cartList") != null) {
			cartList.addAll((ArrayList<CartDTO>)session.getAttribute("cartList"));
		}
		
		CartDTO removeEl = new CartDTO();
		for (CartDTO cart : cartList) {
			if (cart.getBook_dto().getBook_id().equals(cart_dto.getBook_dto().getBook_id())) {
				removeEl = cart;
			}
		}
		cartList.remove(removeEl);
		
		cartList.add(cart_dto);
		session.setAttribute("cartList", cartList);
		
		response.getWriter().write("true");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
