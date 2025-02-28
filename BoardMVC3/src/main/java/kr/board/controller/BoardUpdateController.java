package kr.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.model.BoardDAO;

// POJO 클래스
public class BoardUpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("subject") == null) {
			int no = Integer.parseInt(request.getParameter("no"));
			request.setAttribute("no", no + 1);
			request.setAttribute("board", BoardDAO.getInstance().getBoard(no));
			return "updateBoard";
		}
		
		int no = Integer.parseInt(request.getParameter("no")) - 1;
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		BoardDAO.getInstance().updateBoard(no, subject, contents);
		
		String ctx = request.getContextPath();
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'; </script>";
		response.setContentType("text/html; charset=UTF-8");
		writer.println(String.format(msg, "수정이 완료되었습니다", ctx, "/index.jsp"));
		writer.close();
		return null;
	}

}
