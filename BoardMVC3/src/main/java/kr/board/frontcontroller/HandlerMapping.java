package kr.board.frontcontroller;

import java.util.HashMap;

import kr.board.controller.BoardAddController;
import kr.board.controller.BoardAddDummyController;
import kr.board.controller.BoardDeleteAllController;
import kr.board.controller.BoardDeleteController;
import kr.board.controller.BoardListController;
import kr.board.controller.BoardListPageController;
import kr.board.controller.BoardUpdateController;
import kr.board.controller.Controller;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/boardAdd.do", new BoardAddController());
		mappings.put("/boardAddDummy.do", new BoardAddDummyController());
		mappings.put("/boardDeleteAll.do", new BoardDeleteAllController());
		mappings.put("/boardDelete.do", new BoardDeleteController());
		mappings.put("/boardList.do", new BoardListController());
		mappings.put("/boardListPage.do", new BoardListPageController());
		mappings.put("/boardUpdate.do", new BoardUpdateController());
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
