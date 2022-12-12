package com.view.buy;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CartDelete")
public class CartDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain"); //text 타입을 응답함
		HttpSession session = request.getSession();
		ArrayList<CartDTO> cartList = (ArrayList<CartDTO>) session.getAttribute("cartList");
		String book_id = request.getParameter("book_id");
		
		CartDTO removeEl = new CartDTO();
		for (CartDTO cart : cartList) {
			if (cart.getBook_dto().getBook_id().equals(book_id)) {
				removeEl = cart;
			}
		}
		cartList.remove(removeEl);
		session.setAttribute("cartList", cartList);
		
		response.getWriter().write("true");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
