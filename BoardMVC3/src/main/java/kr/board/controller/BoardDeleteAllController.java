package kr.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.model.BoardDAO;

// POJO 클래스
public class BoardDeleteAllController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDAO.getInstance().deleteAllBoard();
		
		String ctx = request.getContextPath();
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'; </script>";
		response.setContentType("text/html; charset=UTF-8");
		writer.println(String.format(msg, "모든 데이터가 삭제되었습니다", ctx, "index.jsp"));
		writer.close();
		return null;
	}

}
