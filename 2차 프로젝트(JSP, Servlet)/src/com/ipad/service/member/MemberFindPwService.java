package com.ipad.service.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.member.MemberDao;
import com.ipad.dto.member.MemberDto;
import com.ipad.service.Service;

public class MemberFindPwService implements Service {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");


        MemberDao memberDao = new MemberDao(); 
        MemberDto memberDto = memberDao.findPw(id, name, email);
        
        request.setAttribute("findPw", memberDto.getPw());


    }
}
