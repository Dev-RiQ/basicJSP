package kr.board.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.model.Board;

import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/boardAddInfo.do")
public class BoardAddInfoController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("boardNo", Board.getBoardNo());
		RequestDispatcher rd = request.getRequestDispatcher("/board/addBoard.jsp");
		rd.forward(request, response);
	}
}
