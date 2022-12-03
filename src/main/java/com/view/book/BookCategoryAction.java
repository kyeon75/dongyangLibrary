package com.view.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class BookCategoryAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		String cate = (String)request.getParameter("category");
		String field = "";
		
		if (cate.equals("sci")) {
			field +="과학";
		}else if(cate.equals("nov")) {
			field +="소설";
		}else if(cate.equals("soc")) {
			field +="사회";
		}else if(cate.equals("del")) {
			field +="종교";
		}else if(cate.equals("hum")) {
			field +="인문";
		}else if(cate.equals("his")) {
			field +="역사";
		}else if(cate.equals("예술")) {
			field+="예술";
		}
		
			
		request.setAttribute("title", field);
		
		BookDAO dao = new BookDAO();
		
		List<BookDTO> bLists = dao.selectCategory(cate);
		
		request.setAttribute("bLists", bLists);
		
		return "search";
	}
}
