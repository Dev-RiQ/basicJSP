package board;

import java.time.LocalDate;

public class Board {
	private static int boardNo = 1; // 게시글 번호
	private int no;
	private String writer; //작성자
	private String subject;//제목
	private String contents;//내용
	private String regDate;//작성일
    
	public Board( String writer, String subject, String contents) {
		this.writer = writer;
		this.subject = subject;
		this.contents = contents;
		regDate = LocalDate.now().toString();
		no = boardNo++;
	}
	public static int getBoardNo() {
		return boardNo;
	}
	public int getIntNo() {
		return no;
	}
	public String getStringNo() {
		return String.format("%05d",no);
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
    
    
}
