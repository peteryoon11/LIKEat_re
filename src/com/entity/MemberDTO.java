package com.entity;

public class MemberDTO {
	private String username;
	private String userid;
	private String userpw;
	private String email;
	private String phone1;
	private String phone2;
	private String phone3;
	
	public MemberDTO() {
	}

	public MemberDTO(String username, String userid, String userpw, String email, String phone1, String phone2,
			String phone3) {
		super();
		this.username = username;
		this.userid = userid;
		this.userpw = userpw;
		this.email = email;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	@Override
	public String toString() {
		return "MemberDTO [username=" + username + ", userid=" + userid + ", userpw=" + userpw + ", email=" + email
				+ ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + "]";
	}


	
}
