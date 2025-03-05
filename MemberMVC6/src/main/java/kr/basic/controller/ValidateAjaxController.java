package kr.basic.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;
import kr.basic.model.MemberDAO2;

public class ValidateAjaxController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("joinId");
		boolean check = MemberDAO2.getInstance().hasId(id);
		response.getWriter().print(check? "" : "valid");
		return null;
	}

}
