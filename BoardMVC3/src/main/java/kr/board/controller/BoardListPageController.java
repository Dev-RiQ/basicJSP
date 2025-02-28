package kr.board.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.model.BoardDAO;

// POJO 클래스
public class BoardListPageController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int curPage = Integer.parseInt(request.getParameter("page"));
		request.setAttribute("cnt", BoardDAO.getInstance().getCnt());
		request.setAttribute("pageList", BoardDAO.getInstance().printPagingBoard(curPage));
		request.setAttribute("page", BoardDAO.getInstance().printPageRemote(curPage));
		return "boardListPaging";
	}

}
