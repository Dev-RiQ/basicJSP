package kr.board.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.model.BoardDAO;

// POJO 클래스
public class BoardListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("cnt", BoardDAO.getInstance().getCnt());
		request.setAttribute("printAll", BoardDAO.getInstance().printAllBoard());
		return "boardList";
	}

}
