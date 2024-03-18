package com.ipad.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipad.dao.member.MemberDao;
import com.ipad.dto.member.MemberDto;
import com.ipad.service.Service;

public class MyPageViewService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		if (id != null) {
			MemberDao memberDao = MemberDao.getInstance();
			MemberDto mDto = memberDao.getMember(id);

			if (mDto != null) {
				String pw = mDto.getPw();
				String name = mDto.getName();
				String email = mDto.getEmail();
				String addr = mDto.getAddr();
				String pin = mDto.getPin();
				String year = mDto.getYear();
				String month = mDto.getMonth();
				String day = mDto.getDay();

				session.setAttribute("pw", pw);
				session.setAttribute("name", name);
				session.setAttribute("email", email);
				session.setAttribute("addr", addr);
				session.setAttribute("pin", pin);
				session.setAttribute("year", year);
				session.setAttribute("month", month);
				session.setAttribute("day", day);

				System.out.println("마이페이지 조회 성공");
				request.setAttribute("myPage_view", mDto);
				
			} else {
				System.out.println("해당하는 사용자의 정보를 가져오는데 실패했습니다.");
			}
		} else {
			System.out.println("세션에 저장된 아이디가 없습니다.");
			
		}
	}
}
