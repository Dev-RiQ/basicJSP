package kr.basic.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

import java.io.IOException;
import java.io.PrintWriter;

@SuppressWarnings("serial")
@WebServlet("/memberLogin.do")
public class MemberLoginController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");
		String ctx = request.getContextPath();
		String url = null;
		String show = null;
		if(MemberDAO.getInstance().isLoginPass(id, pw)) {
			request.getSession().setAttribute("log",MemberDAO.getInstance().getLog());
			url = "/index.jsp";
			show = id + "님 환영합니다!";
		}else {
			url = "/member/memberLogin.jsp";
			show = "ID 혹은 PW를 확인해주세요.";
		}
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		writer.println(String.format(msg, show, ctx, url));
		writer.close();
	}
}
