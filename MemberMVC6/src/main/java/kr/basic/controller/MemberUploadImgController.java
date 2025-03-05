package kr.basic.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.Member;
import kr.basic.model.MemberDAO;
import kr.basic.utils.FileUtil;

// POJO 클래스
@MultipartConfig(
		maxFileSize = 1024 * 1024 * 1,  // 1MB
		maxRequestSize = 1024 * 1024 * 10  // 10MB
	)
public class MemberUploadImgController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String saveDirectory = request.getServletContext().getRealPath("/Uploads");
			String originalFileName = FileUtil.uploadFile(request, saveDirectory);
			String saveFileName = FileUtil.setAndGetSaveFileName(originalFileName);
			insertData(request,originalFileName,saveFileName);
			response.sendRedirect("memberList.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			request.getRequestDispatcher("memberContent.jsp").forward(request, response);
		}
		return "memberContent";
	}
	
	private void insertData(HttpServletRequest request, String oFileName, String sFileName) {
		int log = MemberDAO.getInstance().getLog();
		if(log != 0) {
			Member member = MemberDAO.getInstance().getAMemberByNum(log);
			member.setoFileName(oFileName);
			member.setsFileName(sFileName);
		}else {
		}
	}
}
