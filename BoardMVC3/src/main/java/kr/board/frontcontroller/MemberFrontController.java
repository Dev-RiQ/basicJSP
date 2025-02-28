package kr.board.frontcontroller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.controller.Controller;

import java.io.IOException;

@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = url.substring(ctx.length());
		
		Controller controller = null;
		HandlerMapping mapping = new HandlerMapping();
		controller = mapping.getController(command);
		String nextPage = controller.requestHandler(request, response);
		
		if(nextPage != null) {
			if(nextPage.indexOf("redirect:") != -1)
				response.sendRedirect(ctx + "/" + nextPage.split(":")[1] + ".do");
			else
				request.getRequestDispatcher(ViewResolver.makeView(nextPage))
					   .forward(request, response);
		}
	}

}
