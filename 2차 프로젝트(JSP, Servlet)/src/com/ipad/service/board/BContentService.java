package com.ipad.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.board.BoardDao;
import com.ipad.dto.board.BoardDto;
import com.ipad.service.Service;



public class BContentService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	    
	    String bId = request.getParameter("bId");

	    
	    BoardDao boardDao = new BoardDao();
	    BoardDto bDto = boardDao.contentView(bId);

	    
	    request.setAttribute("content_view", bDto);

	}

}
