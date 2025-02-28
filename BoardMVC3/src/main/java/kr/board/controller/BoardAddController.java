package kr.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.model.Board;
import kr.board.model.BoardDAO;

// POJO 클래스
public class BoardAddController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("writer") == null) {
			request.setAttribute("boardNo", Board.getBoardNo());
			return "addBoard";
		}
		
		String boardWriter = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		BoardDAO.getInstance().addBoard(boardWriter, subject, contents);
		
		String ctx = request.getContextPath();
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'; </script>";
		response.setContentType("text/html; charset=UTF-8");
		writer.println(String.format(msg, "게시글이 등록되었습니다", ctx, "index.jsp"));
		writer.close();
		return null;
	}

}
