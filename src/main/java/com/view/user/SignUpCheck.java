package com.view.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dm.common.RegisterDAO;
import com.dm.common.RegisterDTO;

@WebServlet("/SignUpCheck")
public class SignUpCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain"); //text 타입을 응답함
		
		String id = request.getParameter("id");

		RegisterDAO dao = new RegisterDAO();
		RegisterDTO dto = new RegisterDTO();
		
		//id email 각각 dao로 중복 검사, 중복안되면 null 중복 안되면 dto 반환
		dto = dao.selectUserId(id);
		
		//만약 중복되지 않았다면 true, 중복되었다면 false
		if (dto == null) {
			response.getWriter().write("true");
		} else {
			response.getWriter().write("false");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
