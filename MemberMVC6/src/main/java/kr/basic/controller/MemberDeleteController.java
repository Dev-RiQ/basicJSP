package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;
import kr.basic.model.MemberDAO2;

// POJO 클래스
public class MemberDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ctx = request.getContextPath();
		String show = null;
		
		int log = MemberDAO2.getInstance().getLog();
		int num = Integer.parseInt(request.getParameter("num"));
		if(num != 1 && (log == num || log == 1)) {
			MemberDAO2.getInstance().deleteAMemberByNum(num);
			if(log != 1)
				request.getSession().removeAttribute("log");
			show = "회원 삭제가 완료되었습니다.";
		}else {
			show = "삭제할 권한이 없습니다.";
		}
		
		PrintWriter writer = response.getWriter();
		String msg = "<script>alert('%s'); location.href='%s/%s'</script>";
		response.setContentType("text/html; charset=UTF-8");
		writer.println(String.format(msg, show, ctx, "memberList.do"));
		writer.close();
		return null;
	}

}
