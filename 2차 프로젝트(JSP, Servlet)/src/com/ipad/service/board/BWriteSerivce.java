package com.ipad.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.board.BoardDao;
import com.ipad.service.Service;


public class BWriteSerivce implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent =request.getParameter("bContent");
	
		BoardDao boardDao = new BoardDao();
		boardDao.write(bName, bTitle, bContent);

	}

}
