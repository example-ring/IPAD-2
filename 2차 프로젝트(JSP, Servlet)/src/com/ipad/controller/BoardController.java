package com.ipad.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.service.Service;
import com.ipad.service.board.BContentService;
import com.ipad.service.board.BDeleteService;
import com.ipad.service.board.BListService;
import com.ipad.service.board.BModifyService;
import com.ipad.service.board.BReplyService;
import com.ipad.service.board.BReplyViewService;
import com.ipad.service.board.BWriteSerivce;



public class BoardController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String com)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
		Service service = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		
		 if (com.equals("/board/write_view.do")) {
			viewPage = "/jsp/board/write.jsp";
			
		 }  else if (com.equals("/board/write.do")) {
			service = new BWriteSerivce();
			service.execute(request, response);
			viewPage = "/board/list.do";
			
		} else if (com.equals("/board/list.do")) {
			service = new BListService();
			service.execute(request, response);
			viewPage = "/jsp/board/list.jsp";
			
		} else if (com.equals("/board/content_view.do")) {
			service = new BContentService();
			service.execute(request, response);
			viewPage = "/jsp/board/content_view.jsp";
			
		} else if (com.equals("/board/modify.do")) {
			service = new BModifyService();
			service.execute(request, response);
			viewPage = "/board/list.do";
			
		} else if (com.equals("/board/delete.do")) {
			service = new BDeleteService();
			service.execute(request, response);
			viewPage = "/board/list.do";
			
		} else if (com.equals("/board/reply_view.do")) {
			service = new BReplyViewService();
			service.execute(request, response);
			viewPage = "/jsp/board/reply_view.jsp";
			
		} else if (com.equals("/board/reply.do")) {
			service = new BReplyService();
			service.execute(request, response);
			viewPage = "/board/list.do";
		}
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	dispatcher.forward(request, response);

	}

}
