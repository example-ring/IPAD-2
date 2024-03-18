package com.ipad.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.board.BoardDao;
import com.ipad.service.Service;



public class BDeleteService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bId = request.getParameter("bId");
		BoardDao boardDao = new BoardDao();
		boardDao.delete(bId);
	}

}
