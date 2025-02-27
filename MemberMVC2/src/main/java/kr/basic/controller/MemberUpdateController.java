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
@WebServlet("/memberUpdate.do")
public class MemberUpdateController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ctx = request.getContextPath();
		String show = "회원 정보 수정이 완료되었습니다!";
		
		int num = MemberDAO.getInstance().getLog();
		String url = "/memberContent.do?num="+num;
		int age = Integer.parseInt(request.getParameter("updateAge"));
		String email = request.getParameter("updateEmail");
		String phone = request.getParameter("updatePhone");
		MemberDAO.getInstance().updateAMemberByNum(num, age, email, phone);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		writer.println(String.format(msg, show, ctx, url));
		writer.close();
	}
}
