package com.ipad.service.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.member.MemberDao;
import com.ipad.dto.member.MemberDto;
import com.ipad.service.Service;

public class MemberFindIdService implements Service {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pin = request.getParameter("pin");

        
        MemberDao memberDao = new MemberDao(); 
        MemberDto memberDto = memberDao.findId(name, email, pin);
        
        request.setAttribute("findId", memberDto.getId());


    }
}
