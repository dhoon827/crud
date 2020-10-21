package com.board.domain;

public class AuthorityVO {
	// 신청 번호
	private int anumber;
	// 신청아이디
	private String aid;

	// 신청 제목
	private String atitle;

	// 내용
	private String acontents;

	// 신청상태
	private String astate;

	// 현재 권한
	private String anow;

	// 신청(중복신청체크)
	private String apropose;

	// 승인여부 
	private String aupdate;

	public AuthorityVO() {

	}

	public int getAnumber() {
		return anumber;
	}

	public void setAnumber(int anumber) {
		this.anumber = anumber;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getAtitle() {
		return atitle;
	}

	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}

	public String getAcontents() {
		return acontents;
	}

	public void setAcontents(String acontents) {
		this.acontents = acontents;
	}

	public String getAstate() {
		return astate;
	}

	public void setAstate(String astate) {
		this.astate = astate;
	}

	public String getAnow() {
		return anow;
	}

	public void setAnow(String anow) {
		this.anow = anow;
	}

	public String getApropose() {
		return apropose;
	}

	public void setApropose(String apropose) {
		this.apropose = apropose;
	}

	public String getAupdate() {
		return aupdate;
	}

	public void setAupdate(String aupdate) {
		this.aupdate = aupdate;
	}

	public AuthorityVO(int anumber, String aid, String atitle, String acontents, String astate, String anow,
			String apropose, String aupdate) {
		super();
		this.anumber = anumber;
		this.aid = aid;
		this.atitle = atitle;
		this.acontents = acontents;
		this.astate = astate;
		this.anow = anow;
		this.apropose = apropose;
		this.aupdate = aupdate;
	}

	@Override
	public String toString() {
		return "AuthorityVO [anumber=" + anumber + ", aid=" + aid + ", atitle=" + atitle + ", acontents=" + acontents
				+ ", astate=" + astate + ", anow=" + anow + ", apropose=" + apropose + ", aupdate=" + aupdate + "]";
	}

	
	}
