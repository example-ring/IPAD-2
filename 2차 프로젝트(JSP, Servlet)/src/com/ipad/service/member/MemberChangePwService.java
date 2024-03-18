package com.ipad.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipad.dao.member.MemberDao;
import com.ipad.dto.member.MemberDto;
import com.ipad.service.Service;

public class MemberChangePwService implements Service {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        
    	HttpSession session = request.getSession();
    	String id = (String) session.getAttribute("id");

    	if (id != null) {
    	    String pw = request.getParameter("pw");
    	    String pwCheck = request.getParameter("pw_check");

    	   if (pw.equals(pwCheck)) {
			
    		   MemberDto mDto = new MemberDto();
    		   mDto.setId(id);
    		   mDto.setPw(pw);
    		   
    		   MemberDao memberDao = new MemberDao();
    		   int result = memberDao.updatePw(mDto);
    		   
    		   if (result > 0) {
				System.out.println("비밀번호 수정 서비스 성공");
			} else {
				System.out.println("비밀번호 수정 서비스 실패");
			} 
    	} else {
    	    System.out.println("비밀번호 확인이 일치하지 않음");
    	}
    } else {
		System.out.println("세션에서 아이디를 가져오지 못함");
	}
}
    
}
