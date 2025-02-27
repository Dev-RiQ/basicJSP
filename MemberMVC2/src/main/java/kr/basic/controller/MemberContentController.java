package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.Member;
import kr.basic.model.MemberDAO;

import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/memberContent.do")
public class MemberContentController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		Member member = MemberDAO.getInstance().getAMemberByNum(num);
		request.setAttribute("member", member);
		RequestDispatcher dis = request.getRequestDispatcher("/member/memberContent.jsp");
		dis.forward(request, response);
	}
}
