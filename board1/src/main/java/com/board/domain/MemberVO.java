package com.board.domain;

public class MemberVO {
	private String mid;
	private String mpassword;
	private String mname;
	private String mpower;
	private int overlap;
	
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

	public int getOverlap() {
		return overlap;
	}

	public void setOverlap(int overlap) {
		this.overlap = overlap;
	}

	@Override
	public String toString() {
		return "MemberVO [mid=" + mid + ", mpassword=" + mpassword + ", mname=" + mname + ", mpower=" + mpower
				+ ", overlap=" + overlap + "]";
	}

	public MemberVO(String mid, String mpassword, String mname, String mpower, int overlap) {
		super();
		this.mid = mid;
		this.mpassword = mpassword;
		this.mname = mname;
		this.mpower = mpower;
		this.overlap = overlap;
	}

	
	
}
