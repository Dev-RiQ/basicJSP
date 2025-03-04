package kr.basic.controller;

import java.io.IOException;

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
		String pw = request.getParameter("joinPw");
		String name = request.getParameter("joinName");
		int age = Integer.parseInt(request.getParameter("joinAge"));
		String email = request.getParameter("joinEmail");
		String phone = request.getParameter("joinPhone");
		MemberDAO.getInstance().insertAMember(id, pw, name, age, email, phone);
		return "redirect:memberLogin";
	}

}
