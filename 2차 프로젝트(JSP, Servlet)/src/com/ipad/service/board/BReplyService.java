package com.ipad.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.board.BoardDao;
import com.ipad.service.Service;

public class BReplyService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			
		String bId = request.getParameter("bId");
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		String bGroup = request.getParameter("bGroup");
		String bStep = request.getParameter("bStep");
		String bIndent = request.getParameter("bIndent");
		
		BoardDao boardDao = new BoardDao();
		boardDao.reply(bId, bName, bTitle, bGroup, bStep, bContent, bIndent);
		
	
	}

}
