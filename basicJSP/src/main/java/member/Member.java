package member;

public class Member {
	private String id;
	private String pw;
	private String name;
	private boolean gender;
	public Member(String id, String pw, String name, boolean gender) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isGender() {
		return gender;
	}
	public String getGender() {
		return gender ? "남성" : "여성";
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	
}
