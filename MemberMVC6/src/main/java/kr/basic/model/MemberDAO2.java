package kr.basic.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO2 {

	private static MemberDAO2 instance;
	private int log;
	private MemberDAO2() {
	}
	public static MemberDAO2 getInstance() {
		if(instance == null) instance = new MemberDAO2();
		return instance;
	}
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "kr/basic/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getLog() {
		return log;
	}

	public List<Member> getMemberList(){
		List<Member> list = null;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			list = session.selectList("getMemberList");
		}catch (Exception e) {
			System.out.println("회원 목록 로드 실패");
		}
		return list;
	}
	
	public void logout() {
		log = 0;
	}
	
	public Member getAMemberByNum(int num) {
		Member member = null;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			member = session.selectOne("getAMemberByNum", num);
		}catch (Exception e) {
			System.out.println("존재하지 않는 회원번호");
		}
		return member;
	}
	
	public boolean hasId(String id) {
		int num = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			num = session.selectOne("hasId", id);
		}catch (Exception e) {
			System.out.println("아이디 매칭 실패");
		}
		return num != 0;
	}
	
	public boolean isLoginPass(String id, String pass) {
		int num = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			Member member = new Member(id, pass, "", 0, "", "");
			num = session.selectOne("isLoginPass", member);
			log = num;
		}catch (Exception e) {
			System.out.println("로그인 실패");
		}
		return num != 0;
	}
	
	public boolean insertAMember(String id, String pw, String name, int age, String email, String phone) {
		int rowCnt = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			Member member = new Member(id, pw, name, age, email, phone);
			rowCnt = session.insert("insertAMember", member);
			session.commit();
		}catch (Exception e) {
			System.out.println("회원 가입 실패");
		}
		return rowCnt != 0;
	}
	
	public boolean updateAMemberByNum(int num, int age, String email, String phone) {
		int row = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			Member member = new Member(num ,"", "", "", age, email, phone);
			row = session.update("updateAMemberByNum", member);
			session.commit();
		}catch (Exception e) {
			System.out.println("회원 정보 수정 실패");
		}
		return row != 0;
	}
	
	public boolean deleteAMemberByNum(int num) {
		int row = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			row = session.delete("deleteAMemberByNum", num);
			if(num == log) log = 0;
			session.commit();
		}catch (Exception e) {
			System.out.println("회원 삭제 실패");
		}
		return row != 0;
	}
}
