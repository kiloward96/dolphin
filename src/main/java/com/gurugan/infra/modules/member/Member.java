package com.gurugan.infra.modules.member;

import java.util.Date;


public class Member{
	
	private String MBseq;
	private String MBid;
	private String MBpassword;
	private String MBname;
	private String MBgender;
	private Date MBdob;
	private String MBmobile;
	private String MBemail;
	private Date MBregDate;
	private Date MBoutDate;
	private Integer MBdelYn;
	private String MBgrade;
	
	private String CCGseq;
	
	private String sessSeq;
	private String sessName;
	private String sessId;
	private String sessGrade;
	private Boolean AutoLogin;
	
	private Integer IflgResultNy;
	
	public String getCCGseq() {
		return CCGseq;
	}
	public void setCCGseq(String cCGseq) {
		CCGseq = cCGseq;
	}
	public String getMBgrade() {
		return MBgrade;
	}
	public void setMBgrade(String mBgrade) {
		MBgrade = mBgrade;
	}
	public String getMBseq() {
		return MBseq;
	}
	public void setMBseq(String mBseq) {
		MBseq = mBseq;
	}
	public String getMBid() {
		return MBid;
	}
	public void setMBid(String mBid) {
		MBid = mBid;
	}
	public String getMBpassword() {
		return MBpassword;
	}
	public void setMBpassword(String mBpassword) {
		MBpassword = mBpassword;
	}
	public String getMBname() {
		return MBname;
	}
	public void setMBname(String mBname) {
		MBname = mBname;
	}
	public String getMBgender() {
		return MBgender;
	}
	public void setMBgender(String mBgender) {
		MBgender = mBgender;
	}
	public Date getMBdob() {
		return MBdob;
	}
	public void setMBdob(Date mBdob) {
		MBdob = mBdob;
	}
	public String getMBmobile() {
		return MBmobile;
	}
	public void setMBmobile(String mBmobile) {
		MBmobile = mBmobile;
	}
	public String getMBemail() {
		return MBemail;
	}
	public void setMBemail(String mBemail) {
		MBemail = mBemail;
	}

	public Date getMBregDate() {
		return MBregDate;
	}
	public void setMBregDate(Date mBregDate) {
		MBregDate = mBregDate;
	}
	public Date getMBoutDate() {
		return MBoutDate;
	}
	public void setMBoutDate(Date mBoutDate) {
		MBoutDate = mBoutDate;
	}
	public Integer getMBdelYn() {
		return MBdelYn;
	}
	public void setMBdelYn(Integer mBdelYn) {
		MBdelYn = mBdelYn;
	}
	public String getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	public String getSessName() {
		return sessName;
	}
	public void setSessName(String sessName) {
		this.sessName = sessName;
	}
	public String getSessId() {
		return sessId;
	}
	public void setSessId(String sessId) {
		this.sessId = sessId;
	}
	public Boolean getAutoLogin() {
		return AutoLogin;
	}
	public void setAutoLogin(Boolean autoLogin) {
		AutoLogin = autoLogin;
	}
	public Integer getIflgResultNy() {
		return IflgResultNy;
	}
	public void setIflgResultNy(Integer iflgResultNy) {
		IflgResultNy = iflgResultNy;
	}
	public String getSessGrade() {
		return sessGrade;
	}
	public void setSessGrade(String sessGrade) {
		this.sessGrade = sessGrade;
	}

	

	

}
