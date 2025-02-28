package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

// POJO 클래스
public class MemberLoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("loginId") == null)
			return "memberLogin";
		
		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");
		String ctx = request.getContextPath();
		String url = null;
		String show = null;
		if(MemberDAO.getInstance().isLoginPass(id, pw)) {
			request.getSession().setAttribute("log",MemberDAO.getInstance().getLog());
			url = "index.jsp";
			show = id + "님 환영합니다!";
		}else {
			url = "memberLogin.do";
			show = "ID 혹은 PW를 확인해주세요.";
		}
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		writer.println(String.format(msg, show, ctx, url));
		writer.close();
			
		return null;
			
	}

}
