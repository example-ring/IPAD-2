package com.ipad.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.member.MemberDao;
import com.ipad.service.Service;

public class MyPageDeleteService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");

		MemberDao memberDao = MemberDao.getInstance();

	       
	        int result = memberDao.deleteMember(id);

	        if (result == 1) {
	            System.out.println("회원 탈퇴 성공");
	        } else {
	            System.out.println("회원 탈퇴 실패");
	        }
		
	}

}
