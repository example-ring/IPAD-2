package com.ipad.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipad.service.Service;

public class MemberLogoutService implements Service {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        // 세션을 얻어옴
        HttpSession session = request.getSession();

        // 세션에서 로그인 정보를 제거
        session.removeAttribute("ValidMem");
        session.removeAttribute("name");

        
    }
}
