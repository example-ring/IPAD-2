package com.ipad.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.service.Service;
import com.ipad.service.member.MemberChangePwService;
import com.ipad.service.member.MemberFindIdService;
import com.ipad.service.member.MemberFindPwService;
import com.ipad.service.member.MemberJoinService;
import com.ipad.service.member.MemberLoginService;
import com.ipad.service.member.MemberLogoutService;
import com.ipad.service.member.MyPageDeleteService;
import com.ipad.service.member.MyPageModifyService;
import com.ipad.service.member.MyPageViewService;

public class MemberController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String com)
			throws ServletException, IOException {
		String viewPage = null;
		Service service = null;

		if (com.equals("/member/joinTs.do")) {
			viewPage = "/jsp/member/joinTs.jsp";

		}

		else if (com.equals("/member/join.do")) {
			viewPage = "/jsp/member/joinForm.jsp";
		}

		else if (com.equals("/member/login.do")) {
			viewPage = "/jsp/member/login.jsp";
		}

		else if (com.equals("/member/findId.do")) {
			viewPage = "/jsp/member/findId.jsp";
		}

		else if (com.equals("/member/findIdOk.do")) {
			service = new MemberFindIdService();
			service.execute(request, response);
			viewPage = "/jsp/member/findIdOk.jsp";
		}

		else if (com.equals("/member/findPw.do")) {
			viewPage = "/jsp/member/findPw.jsp";
		}

		else if (com.equals("/member/findPwOk.do")) {
			service = new MemberFindPwService();
			service.execute(request, response);
			viewPage = "/jsp/member/findPwOk.jsp";
		}

		else if (com.equals("/member/changePw.do")) {
			service = new MemberChangePwService();
			service.execute(request, response);
			viewPage = "/main.do";
		}

		else if (com.equals("/member/joinOk.do")) {
			service = new MemberJoinService();
			service.execute(request, response);
			viewPage = "/member/login.do";

		}

		else if (com.equals("/member/loginOk.do")) {
			service = new MemberLoginService();
			service.execute(request, response);
			viewPage = "/main.do";

		}

		else if (com.equals("/member/logout.do")) {
			service = new MemberLogoutService();
			service.execute(request, response);
			viewPage = "/main.do";
		}

		else if (com.equals("/member/myPage_view.do")) {
			service = new MyPageViewService();
			service.execute(request, response);
			viewPage = "/jsp/member/myPage_view.jsp";

		} else if (com.equals("/member/myPage_modify.do")) {
			service = new MyPageModifyService();
			service.execute(request, response);
			viewPage = "/member/myPage_view.do";
		}

		else if (com.equals("/member/myPage_delete.do")) {
			viewPage = "/jsp/member/myPage_delete.jsp";

		} else if (com.equals("/member/myPage_deleteOk.do")) {
			service = new MyPageDeleteService();
			service.execute(request, response);
			viewPage = "/main.do";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);

	}

}
