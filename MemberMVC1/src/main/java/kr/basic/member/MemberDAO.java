package kr.basic.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	private static MemberDAO instance;
	private MemberDAO() {
		
	}
	public static MemberDAO getInstance() {
		if(instance == null) instance = new MemberDAO();
		return instance;
	}
	
	private Connection conn; //db 객체
	private PreparedStatement ps; // db 쿼리 명령문 객체
	private ResultSet rs; // 결과 테이블 객체 => select 시
	
	private void getConnection() {
		String database = "mvc1db";
		String url = "jdbc:mysql://localhost:3306/"+database
				+"?charaterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user = "root";
		String password = "1234";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("db 연동 성공");
		} catch (Exception e) {
			System.out.println("db 연동 실패");
			e.printStackTrace();
		}
	}
	
	public ArrayList<Member> getMemberList(){
		ArrayList<Member> list = new ArrayList<>();
		String sql = "SELECT * FROM member";
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name= rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				list.add(new Member(num,id,pass,name,age,email,phone));
				System.out.println(list.getLast());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list;
	}
	
	public boolean isLoginPass(String id, String pass) {
		String sql = "select num from member where id=? and pass=?";
		int num = 0;
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pass);
			
			rs = ps.executeQuery();
			if(rs.next())
				num = rs.getInt("num");
			System.out.println("로그인 성공");
		} catch (Exception e) {
			System.out.println("로그인 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return num != 0;
	}
	
	public boolean insertAMember(String id, String pw, String name, int age, String email, String phone) {
		String sql = "insert into member(id,pass,name,age,email,phone) values(?,?,?,?,?,?);";
		int rowCnt = 0;
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			ps.setString(3, name);
			ps.setInt(4, age);
			ps.setString(5, email);
			ps.setString(6, phone);
			
			rowCnt = ps.executeUpdate();
			System.out.println("회원 추가 성공");
		} catch (Exception e) {
			System.out.println("회원 추가 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return rowCnt != 0;
	}
	
	private void dbClose() {
		try {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
