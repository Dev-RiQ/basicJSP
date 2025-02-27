package kr.basic.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@SuppressWarnings("serial")
@WebServlet("/memberLogout.do")
public class MemberLogoutController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String ctx = request.getContextPath();
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		writer.println(String.format(msg, "로그아웃 되었습니다.", ctx, "index.jsp"));
		writer.close();
		request.getSession().removeAttribute("log");
	}
}
