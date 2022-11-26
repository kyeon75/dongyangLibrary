package com.view.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.dm.common.RegisterDAO;

@WebServlet("/SignUpCheckAjax")
public class SignUpCheckAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		String value = request.getParameter("value");
		RegisterDAO dao = new RegisterDAO();
		String result = null;
		JSONObject jobj = new JSONObject();
		if (type.equals("id")) {
			if (dao.selectUserId(value) == null) {
				result = "true";
			} else {
				result = "false";
			}

		} else if (type.equals("email")) {
			if (dao.selectEmail(value) == null) {
				result = "true";
			} else {
				result = "false";
			}
		}
		jobj.put("result", result);
		System.out.println(type + " " + value + " " + result);
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj.toJSONString());
	}
}