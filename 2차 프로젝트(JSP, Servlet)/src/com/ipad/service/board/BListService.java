package com.ipad.service.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipad.dao.board.BoardDao;
import com.ipad.dto.board.BoardDto;
import com.ipad.service.Service;

public class BListService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		

		BoardDao boardDao = new BoardDao();
		ArrayList<BoardDto> dtos = boardDao.list();
		request.setAttribute("list", dtos);
		
		System.out.println(boardDao.list());
	}

}
