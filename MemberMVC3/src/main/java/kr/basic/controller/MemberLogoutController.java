package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// POJO 클래스
public class MemberLogoutController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ctx = request.getContextPath();
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		response.setContentType("text/html; charset=UTF-8");
		writer.println(String.format(msg, "로그아웃 되었습니다.", ctx, "index.jsp"));
		writer.close();
		request.getSession().removeAttribute("log");
		return null;
	}

}
