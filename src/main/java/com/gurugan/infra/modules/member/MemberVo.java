package com.gurugan.infra.modules.member;

import com.gurugan.infra.common.base.BaseVo;

public class MemberVo extends BaseVo {
	private Integer shOption;
	private String shValue;
	private Integer shDelYn;
	private Integer shOption2;
	private String shValue2;
	private Integer shDate;
	private String shStartDate;
	private String shEndDate;
	private Integer shStatus;
	
	private String MBseq;
	private String MBid;
	
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShDelYn() {
		return shDelYn;
	}
	public void setShDelYn(Integer shDelYn) {
		this.shDelYn = shDelYn;
	}
	public Integer getShOption2() {
		return shOption2;
	}
	public void setShOption2(Integer shOption2) {
		this.shOption2 = shOption2;
	}
	public String getShValue2() {
		return shValue2;
	}
	public void setShValue2(String shValue2) {
		this.shValue2 = shValue2;
	}
	public Integer getShDate() {
		return shDate;
	}
	public void setShDate(Integer shDate) {
		this.shDate = shDate;
	}
	public String getShStartDate() {
		return shStartDate;
	}
	public void setShStartDate(String shStartDate) {
		this.shStartDate = shStartDate;
	}
	public String getShEndDate() {
		return shEndDate;
	}
	public void setShEndDate(String shEndDate) {
		this.shEndDate = shEndDate;
	}
	public Integer getShStatus() {
		return shStatus;
	}
	public void setShStatus(Integer shStatus) {
		this.shStatus = shStatus;
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
	
	

}
