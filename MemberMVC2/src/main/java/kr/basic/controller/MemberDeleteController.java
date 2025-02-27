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
@WebServlet("/memberDelete.do")
public class MemberDeleteController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ctx = request.getContextPath();
		String url = "/memberList.do";
		String show = null;
		
		int log = MemberDAO.getInstance().getLog();
		int num = Integer.parseInt(request.getParameter("num"));
		if(num != 1 && (log == num || log == 1)) {
			MemberDAO.getInstance().deleteAMemberByNum(num);
			show = "회원 삭제가 완료되었습니다.";
		}else {
			show = "삭제할 권한이 없습니다.";
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		writer.println(String.format(msg, show, ctx, url));
		writer.close();
	}
}
