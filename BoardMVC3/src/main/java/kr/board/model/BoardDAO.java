package kr.board.model;

import java.util.ArrayList;

public class BoardDAO {
	private ArrayList<Board> list;

	private BoardDAO() {
		init();
	}
	private static BoardDAO instance;
	public static BoardDAO getInstance() {
		if(instance == null) instance = new BoardDAO();
		return instance;
	}
	
	
	private void init() {
		list = new ArrayList<>();
		list.add(new Board("작성자1","제목1","내용1"));
		list.add(new Board("작성자2","제목2","내용2"));
		list.add(new Board("작성자3","제목3","내용3"));
	}
	
	public void setDummy() {
		for(int i = 0 ; i < 10 ; i ++)
			list.add(new Board("작성자"+Board.getBoardNo()
								,"제목"+Board.getBoardNo()
								,"내용"+Board.getBoardNo()));
	}
	
	public int getCnt() {
		return list.size();
	}
	
	public Board getBoard(int idx) {
		return list.get(idx);
	}
	
	private String[] getAnBoardData(Board board) {
		return new String[] {board.getStringNo()
							,board.getWriter()
							,board.getRegDate()
							,board.getSubject()
							,board.getContents()};
	}
	
	public void addBoard(String writer, String subject, String contents) {
		list.add(new Board(writer, subject, contents));
	}
	
	public void updateBoard(int no, String subject, String contents) {
		list.get(no).setSubject(subject);
		list.get(no).setContents(contents);
	}
	
	public void deleteBoard(int no) {
		list.remove(no);
	}
	
	public void deleteAllBoard() {
		list = new ArrayList<>();
	}
	
	public String printPageRemote(int curPage) {
		int start = (curPage - 1) / 3 * 3 + 1;
		int end = start + 2;
		if(end > (list.size() + 4) / 5) end = (list.size() + 4) / 5;
		String tag = "<a class=\"remote\" href='/BoardMVC3/boardListPage.do?page=%s'>%s</a>";
		StringBuilder sb = new StringBuilder();
		if(start > 1) sb.append(String.format(tag, (start - 3)+"", "[이전]"));
		for(int i = start ; i <= end ; i++) {
			sb.append(String.format(tag, i+"", "["+i+"]"));
		}
		if((list.size() + 4) / 5 - start >= 3) sb.append(String.format(tag, (end + 1)+"", "[이후]"));
		return sb.toString();
	}
	
	public String printPagingBoard(int curPage) {
		if(list.size() == 0) return "";
		int idx = 5 * (curPage - 1);
		StringBuilder sb = new StringBuilder();
		for(int i = 5 * (curPage - 1) ; i < 5 * curPage ; i++) {
			if(i == list.size()) break;
			sb.append(getTableRow(list.get(i),idx++));
		}
		return sb.toString();
	}
	
	public String printAllBoard() {
		int idx = 0;
		StringBuilder sb = new StringBuilder();
		for(Board board : list) 
			sb.append(getTableRow(board,idx++));
		return sb.toString();
	}
	
	private String getTableRow(Board board, int idx) {
		StringBuilder sb = new StringBuilder();
		sb.append("<tr>");
		int dateIdx = 0;
		for(String data : getAnBoardData(board)) {
			if(dateIdx++ == 3)
				sb.append("<td><a onclick=\"location.href='/BoardMVC3/boardUpdate.do?no="+idx+"'\">"+data+"</a></td>");
			else
				sb.append("<td>"+data+"</td>");
			
		}
		sb.append("<td>"
				+ "<button onclick=\"location.href='/BoardMVC3/boardDelete.do?no="+idx+"'\">"
						+ "삭제하기</button></td>");
		sb.append("</tr>");
		return sb.toString();
	}
}
