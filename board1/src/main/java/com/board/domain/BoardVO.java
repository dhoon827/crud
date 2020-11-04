package com.board.domain;

import java.util.Date;

public class BoardVO {
	private int bnumber;
	private String bwriter;
	private String bpassword;
	private String btitle;
	private String bcontents;
	private Date bdate;
	private int bhits;
	private int asecret;
	
	public BoardVO() {
		
	}

	public int getBnumber() {
		return bnumber;
	}

	public void setBnumber(int bnumber) {
		this.bnumber = bnumber;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBpassword() {
		return bpassword;
	}

	public void setBpassword(String bpassword) {
		this.bpassword = bpassword;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontents() {
		return bcontents;
	}

	public void setBcontents(String bcontents) {
		this.bcontents = bcontents;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public int getBhits() {
		return bhits;
	}

	public void setBhits(int bhits) {
		this.bhits = bhits;
	}

	public int getAsecret() {
		return asecret;
	}

	public void setAsecret(int asecret) {
		this.asecret = asecret;
	}

	public BoardVO(int bnumber, String bwriter, String bpassword, String btitle, String bcontents, Date bdate,
			int bhits, int asecret) {
		super();
		this.bnumber = bnumber;
		this.bwriter = bwriter;
		this.bpassword = bpassword;
		this.btitle = btitle;
		this.bcontents = bcontents;
		this.bdate = bdate;
		this.bhits = bhits;
		this.asecret = asecret;
	}

	@Override
	public String toString() {
		return "BoardVO [bnumber=" + bnumber + ", bwriter=" + bwriter + ", bpassword=" + bpassword + ", btitle="
				+ btitle + ", bcontents=" + bcontents + ", bdate=" + bdate + ", bhits=" + bhits + ", asecret=" + asecret
				+ "]";
	}


	
	}
