package com.ipad.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.member.MemberDao;
import com.ipad.dto.member.MemberDto;
import com.ipad.service.Service;

public class MemberJoinService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		String pin = request.getParameter("pin");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");

		MemberDto memberDto = new MemberDto(id, pw, name, email, addr, pin, year, month, day);
		memberDto.setId(id);
		memberDto.setPw(pw);
		memberDto.setName(name);
		memberDto.setEmail(email);
		memberDto.setAddr(addr);
		memberDto.setPin(pin);
		memberDto.setYear(year);
		memberDto.setMonth(month);
		memberDto.setDay(day);

		
		MemberDao memberDao = new MemberDao();
		memberDao.insertMember(memberDto);

	}
}
