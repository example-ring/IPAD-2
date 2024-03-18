package com.ipad.service.member;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipad.dao.member.MemberDao;
import com.ipad.dto.member.MemberDto;
import com.ipad.service.Service;

public class MemberLoginService implements Service {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        MemberDao dao = MemberDao.getInstance();
        int checkNum = dao.userCheck(id, pw);
        int checkId = dao.confirmId(id);
        System.out.println("멤버로그인 서비스 입장");
        
        System.out.println(id);
        System.out.println(pw);
        

        try {
           
            if (checkId != 1) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/member/joinTs.do");
                dispatcher.forward(request, response);
                System.out.println("존재하지 않는 회원, 회원 가입창으로 이동");
            } else {
             
                if (checkNum == 1) {
               
                    MemberDto dto = dao.getMember(id);
                    pw = dto.getPw();
                    String name = dto.getName();
                    String addr = dto.getAddr(); 
                    String pin = dto.getPin();
                    String year = dto.getYear();
                    String month = dto.getMonth();
                    String day = dto.getDay();
                    HttpSession session = request.getSession(true);
                    session.setAttribute("id", id);
                    session.setAttribute("pw", pw);
                    session.setAttribute("name", name);
                    session.setAttribute("addr", addr);
                    session.setAttribute("pin", pin);
                    session.setAttribute("year", year);
                    session.setAttribute("month", month);
                    session.setAttribute("day", day);
                    session.setAttribute("ValidMem", "yes");
                    System.out.println("로그인 성공");
                    
                  
                } else {
                   
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/member/login.do");
                    dispatcher.forward(request, response);
                    System.out.println("비밀번호 일치하지 않음");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("로그인 기능 실패" + e);
        }
    }
}