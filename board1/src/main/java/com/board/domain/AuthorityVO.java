package com.board.domain;

public class AuthorityVO {
	private String aid;
	private String atitle;
	private String acontents;
	private String astate;
	private String anow;
	private String apropose;
	
	public AuthorityVO() {
		
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
	private String aupdate;

	public AuthorityVO(String aid, String atitle, String acontents, String astate, String anow, String apropose,
			String aupdate) {
		super();
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
		return "AuthorityVO [aid=" + aid + ", atitle=" + atitle + ", acontents=" + acontents + ", astate=" + astate
				+ ", anow=" + anow + ", apropose=" + apropose + ", aupdate=" + aupdate + "]";
	}
	
	
}
