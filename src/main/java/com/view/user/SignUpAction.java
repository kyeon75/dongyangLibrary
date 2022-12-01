package com.view.user;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dm.common.RegisterDAO;
import com.dm.common.RegisterDTO;

public class SignUpAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//id, password, passwordConfirm, name, email, mobileNumber, baseAddress, subAddress, gender, birthYear, birthMonth, birthDay
        Map<String, String[]> map = request.getParameterMap();
        Map<String, String> paramMap = new HashMap<String, String>();
        
        //회원가입 폼을 통해 받아온 데이터들을 참조하기 좋게 컬랙션에 넣음, 만약 null 값이 오면 경고문구를 띄우고 종료함
        for(String key : map.keySet()) {
        	if (map.get(key) != null) {
            	String tmp = Arrays.toString(map.get(key));
            	tmp = tmp.substring(1, tmp.length()-1);
            	paramMap.put(key, tmp);
        	} else {
      	  		request.setAttribute("alert", "회원가입에 실패했습니다.");
      	  		return "main";
        	}
        }
        
        //생일을 조합해 date 도메인에 들어갈 수 있게 함
        String date = paramMap.get("birthYear") + "-" + paramMap.get("birthMonth") + "-" + paramMap.get("birthDay");
        
        //아이디 검증
        if (!Pattern.matches("^[a-zA-z0-9]{6,16}$", paramMap.get("id"))) {
  	  		request.setAttribute("alert", "회원가입에 실패했습니다.");
  	  		return "main";
        }
        
        //전화번호 검증(숫자인지 검사)
        if (!Pattern.matches("^[0-9]*$", paramMap.get("mobileNumber"))) {
  	  		request.setAttribute("alert", "회원가입에 실패했습니다.");
  	  		return "main";
        }
        
        //이메일 검증
  	  	if(!Pattern.matches("^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$", paramMap.get("email"))) {
  	  		request.setAttribute("alert", "회원가입에 실패했습니다.");
  	  		return "main";
  	  	}
        
  	  	//회원가입 폼을 통해 받아온 데이터를 dto에 넣음
        RegisterDTO dto = new RegisterDTO();
        dto.setId(paramMap.get("id"));
        dto.setPassword(paramMap.get("password"));
        dto.setName(paramMap.get("name"));
        dto.setEmail(paramMap.get("email"));
        dto.setMobileNumber(paramMap.get("mobileNumber"));
        dto.setBaseAddress(paramMap.get("baseAddress"));
		dto.setSubAddress(paramMap.get("subAddress"));
		dto.setGender(paramMap.get("gender"));
		dto.setBirth(date);
		
		
		//회원가입 dao를 실행함, dao.insertUser(dto)가 성공하면 dto객체를 반환하고, 실패하면 null을 반환함
		RegisterDAO dao = new RegisterDAO();
		if (dao.insertUser(dto)) {
			request.setAttribute("alert", "회원가입에 성공했습니다.");
		} else {
			request.setAttribute("alert", "회원가입에 실패했습니다.");
		}
		return "main";
	}
}
