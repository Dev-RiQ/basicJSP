package kr.board.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.model.BoardDAO;

import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/boardListPage.do")
public class BoardListPageController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int curPage = Integer.parseInt(request.getParameter("page"));
		request.setAttribute("cnt", BoardDAO.getInstance().getCnt());
		request.setAttribute("pageList", BoardDAO.getInstance().printPagingBoard(curPage));
		request.setAttribute("page", BoardDAO.getInstance().printPageRemote(curPage));
		RequestDispatcher rd = request.getRequestDispatcher("/board/boardListPaging.jsp");
		rd.forward(request, response);
	}
}
