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
@WebServlet("/boardUpdateInfo.do")
public class BoardUpdateInfoController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		request.setAttribute("no", no + 1);
		request.setAttribute("board", BoardDAO.getInstance().getBoard(no));
		RequestDispatcher rd = request.getRequestDispatcher("/board/updateBoard.jsp");
		rd.forward(request, response);
	}
}
