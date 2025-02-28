package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

// POJO 클래스
public class MemberInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("joinId") == null)
			return "memberInsert";
		
		String id = request.getParameter("joinId");
		String ctx = request.getContextPath();
		String url = null;
		String show = null;
		if(MemberDAO.getInstance().hasId(id)) {
			url = "memberInsert.do";
			show = "이미 존재하는 아이디입니다.";
		}else {
			String pw = request.getParameter("joinPw");
			String name = request.getParameter("joinName");
			int age = Integer.parseInt(request.getParameter("joinAge"));
			String email = request.getParameter("joinEmail");
			String phone = request.getParameter("joinPhone");
			MemberDAO.getInstance().insertAMember(id, pw, name, age, email, phone);
			url = "memberLogin.do";
			show = id + "님 가입을 환영합니다!\\n로그인 창으로 안내합니다.";
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		writer.println(String.format(msg, show, ctx, url));
		writer.close();
		return null;
	}

}
