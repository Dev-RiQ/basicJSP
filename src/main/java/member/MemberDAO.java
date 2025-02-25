package member;

import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	private List<Member> list;
	private int log;
	private MemberDAO() {
		init();
	} 
	private static MemberDAO instance;
	public static MemberDAO getInstance() {
		if(instance == null) instance = new MemberDAO();
		return instance;
	}
	public static void setInstance(MemberDAO instance) {
		MemberDAO.instance = instance;
	}
	private void init() {
		list = new ArrayList<>();
		log = -1;
		setDummy();
	}
	private void setDummy() {
		list.add(new Member("test1","1111","test1",true));
		list.add(new Member("test2","2222","test2",false));
		list.add(new Member("test3","3333","test3",true));
		list.add(new Member("test4","4444","test4",false));
	}
	public List<Member> getList() {
		return list;
	}
	public void setList(List<Member> list) {
		this.list = list;
	}
	public int getLog() {
		return log;
	}
	public void setLog(int log) {
		this.log = log;
	}
	public boolean adminLogin(String id, String pw) {
		if(!id.equals("admin") || !pw.equals("admin"))
			return false;
		log = -100;
		return true;
	}
	public boolean addMember(String id, String pw, String name, boolean gender) {
		for(Member member : list)
			if(member.getId().equals(id))
				return false;
		list.add(new Member(id,pw,name,gender));
		return true;
	}
	
	public boolean login(String id, String pw) {
		if(!adminLogin(id, pw)) 
			for(int i = 0 ; i < list.size(); i++)
				if(list.get(i).getId().equals(id) && list.get(i).getPw().equals(pw)) {
					log = i;
					return true;
				}
		return false;
	}
	
	public String getLoginName() {
		if(log == -100) return "관리자";
		return list.get(log).getName();
	}
	
	public String getMemberId(int idx) {
		return list.get(idx).getId();
	}
	
	public boolean getLoginGender() {
		return list.get(log).isGender();
	}
	
	public void deleteMember(int idx) {
		list.remove(idx);
	}
	
	public boolean deleteMember(String pw) {
		if(!list.get(log).getPw().equals(pw))
			return false;
		list.remove(log);
		log = -1;
		return true;
	}
	public boolean updateMember(String id, String pw, String name, boolean gender) {
		if(!list.get(log).getPw().equals(pw) || !list.get(log).getId().equals(id))
			return false;
		list.get(log).setName(name);
		list.get(log).setGender(gender);
		return true;
	}
	
	public String printMemberList() {
		String form1 = "<tr>%s</tr>";
		String form2 = "<td>%s</td>";
		StringBuilder print = new StringBuilder();
		int cnt = 0;
		for(Member member : list) {
			StringBuilder sb = new StringBuilder();
			sb.append(String.format(form2, member.getId()));
			sb.append(String.format(form2, member.getPw()));
			sb.append(String.format(form2, member.getName()));
			sb.append(String.format(form2, member.getGender()));
			sb.append(String.format(form2, "<button value=\""+(cnt++)+"\" onclick='memberDelete(this)'>삭제</button>"));
			print.append(String.format(form1, sb.toString()));
		}
		return print.toString();
	}

	
}
