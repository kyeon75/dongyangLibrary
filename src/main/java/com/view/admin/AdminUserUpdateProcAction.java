package com.view.admin;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;
import com.view.user.UserDAO;

public class AdminUserUpdateProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
        Map<String, String[]> map = request.getParameterMap();
        Map<String, String> paramMap = new HashMap<String, String>();

        //어드민 회원수정 폼을 통해 받아온 데이터들을 참조하기 좋게 컬랙션에 넣음
        for(String key : map.keySet()) {
        	if (map.get(key) != null) {
        		String tmp = Arrays.toString(map.get(key));
            	tmp = tmp.substring(1, tmp.length()-1);// Array를 String으로 바꾼것이기 때문에 [value] 형식에서 앞뒤로 한 칸씩 짤라냄
            	if (!tmp.isEmpty()) {
                	paramMap.put(key, tmp);
            	}
        	}
        }
        
        //유저 데이터 수정
        UserDAO dao = new UserDAO();
        for(String key : paramMap.keySet()) {
        	if (!key.equals("user_id")) {
        		if (!dao.updateUser(key, paramMap.get(key), paramMap.get("user_id"))) {
        			request.setAttribute("alert", "회원 수정 실패");
        			return "userMgr";
        		}
        	}
        }
        request.setAttribute("alert", "회원 수정 성공");
		return "userMgr";
	}
}