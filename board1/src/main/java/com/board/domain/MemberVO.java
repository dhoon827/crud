package com.board.domain;

public class MemberVO {
	private String mid;
	private String mpassword;
	private String mname;
	private String mpower;
	
	public MemberVO() {
		
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpassword() {
		return mpassword;
	}

	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMpower() {
		return mpower;
	}

	public void setMpower(String mpower) {
		this.mpower = mpower;
	}

	public MemberVO(String mid, String mpassword, String mname, String mpower) {
		super();
		this.mid = mid;
		this.mpassword = mpassword;
		this.mname = mname;
		this.mpower = mpower;
	}

	@Override
	public String toString() {
		return "MemberVO [mid=" + mid + ", mpassword=" + mpassword + ", mname=" + mname + ", mpower=" + mpower + "]";
	}
	
	
}
