package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/memberList.do")
public class MemberListController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String print = MemberDAO.getInstance().printMemberList();
		request.setAttribute("memberList", print);
		RequestDispatcher dis = request.getRequestDispatcher("/member/memberList.jsp");
		dis.forward(request, response);
	}
}
