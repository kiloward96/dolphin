package com.gurugan.infra.modules.member;

public class MemberAddress {
	
	private String MAseq;
	private String MBseq;				// member table 외래키
	private String addressName;
	private Integer addressZipcode;
	private String addressMain;
	private String addressDetail;
	private String recieverName;		// 차후 변경가능 수신자명
	private String recieverMobile;		// 수신자 전화번호
	private String defaultYn;
	private String MAdelYn;
	
	public String getMAseq() {
		return MAseq;
	}
	public void setMAseq(String mAseq) {
		MAseq = mAseq;
	}
	public String getMBseq() {
		return MBseq;
	}
	public void setMBseq(String mBseq) {
		MBseq = mBseq;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public Integer getAddressZipcode() {
		return addressZipcode;
	}
	public void setAddressZipcode(Integer addressZipcode) {
		this.addressZipcode = addressZipcode;
	}
	public String getAddressMain() {
		return addressMain;
	}
	public void setAddressMain(String addressMain) {
		this.addressMain = addressMain;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	public String getRecieverName() {
		return recieverName;
	}
	public void setRecieverName(String recieverName) {
		this.recieverName = recieverName;
	}
	public String getRecieverMobile() {
		return recieverMobile;
	}
	public void setRecieverMobile(String recieverMobile) {
		this.recieverMobile = recieverMobile;
	}
	public String getDefaultYn() {
		return defaultYn;
	}
	public void setDefaultYn(String defaultYn) {
		this.defaultYn = defaultYn;
	}
	public String getMAdelYn() {
		return MAdelYn;
	}
	public void setMAdelYn(String mAdelYn) {
		MAdelYn = mAdelYn;
	}
	
}
