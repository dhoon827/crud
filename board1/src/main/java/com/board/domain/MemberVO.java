package com.board.domain;

public class MemberVO {
	private String mid;
	private String mpassword;
	private String mname;
	
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

	public MemberVO(String mid, String mpassword, String mname) {
		super();
		this.mid = mid;
		this.mpassword = mpassword;
		this.mname = mname;
	}

	@Override
	public String toString() {
		return "MemberVO [mid=" + mid + ", mpassword=" + mpassword + ", mname=" + mname + "]";
	}
	
	
}
