package com.ipad.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipad.dao.member.MemberDao;
import com.ipad.dto.member.MemberDto;
import com.ipad.service.Service;

public class MyPageModifyService implements Service {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        
    	HttpSession session = request.getSession();
    	String id = (String) session.getAttribute("id");

    	if (id != null) {
    	    // 아이디가 null이 아닌 경우에만 실행
    	    String pw = request.getParameter("pw");
    	    String pwCheck = request.getParameter("pw_check");

    	   if (pw.equals(pwCheck)) {
			
    		   String email = request.getParameter("email");
    		   String addr = request.getParameter("addr");
    		   
    		   MemberDto mDto = new MemberDto();
    		   mDto.setId(id);
    		   mDto.setPw(pw);
    		   mDto.setEmail(email);
    		   mDto.setAddr(addr);
    		   
    		   MemberDao memberDao = new  MemberDao();
    		   int result = memberDao.updateMember(mDto);
    		   
    		   if (result > 0) {
				System.out.println("마이페이지 수정 서비스 입장");
			} else {
				System.out.println("마이페이지 수정 서비스 실패");
			} 
    	} else {
    	    System.out.println("비밀번호 확인이 일치하지 않음");
    	}
    } else {
		System.out.println("세션에서 아이디를 가져오지 못함");
	}
}
    
}