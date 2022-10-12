package com.gurugan.infra.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.gurugan.infra.common.base.Base;


public class Member extends Base{
	
	// Member table
	private String MBseq;				// member table 외래키
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
	
	// cache 관련 dto
	private String CCGseq;
	
	// Session 처리 관련 dto
	private String sessSeq;
	private String sessName;
	private String sessId;
	private String sessGrade;
	private Boolean AutoLogin;
	
	private Integer IflgResultNy;
	
	
	// Member Addres table
	private String MAseq;
	private String addressName;
	private Integer addressZipcode;
	private String addressMain;
	private String addressDetail;
	private String addressMore;
	private String recieverName;		// 차후 변경가능 수신자명
	private String recieverMobile;		// 수신자 전화번호
	private Integer defaultYn;
	private String MAdelYn;
	
	// file Upload dto
	private MultipartFile[] memberUploadedProfileImage;
	private MultipartFile[] memberUploadedImage;
	private MultipartFile[] memberUploadedFile;
	
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
	public String getMBgrade() {
		return MBgrade;
	}
	public void setMBgrade(String mBgrade) {
		MBgrade = mBgrade;
	}
	public String getCCGseq() {
		return CCGseq;
	}
	public void setCCGseq(String cCGseq) {
		CCGseq = cCGseq;
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
	public String getSessGrade() {
		return sessGrade;
	}
	public void setSessGrade(String sessGrade) {
		this.sessGrade = sessGrade;
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
	public String getMAseq() {
		return MAseq;
	}
	public void setMAseq(String mAseq) {
		MAseq = mAseq;
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
	public String getAddressMore() {
		return addressMore;
	}
	public void setAddressMore(String addressMore) {
		this.addressMore = addressMore;
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
	public Integer getDefaultYn() {
		return defaultYn;
	}
	public void setDefaultYn(Integer defaultYn) {
		this.defaultYn = defaultYn;
	}
	public String getMAdelYn() {
		return MAdelYn;
	}
	public void setMAdelYn(String mAdelYn) {
		MAdelYn = mAdelYn;
	}
	public MultipartFile[] getMemberUploadedProfileImage() {
		return memberUploadedProfileImage;
	}
	public void setMemberUploadedProfileImage(MultipartFile[] memberUploadedProfileImage) {
		this.memberUploadedProfileImage = memberUploadedProfileImage;
	}
	public MultipartFile[] getMemberUploadedImage() {
		return memberUploadedImage;
	}
	public void setMemberUploadedImage(MultipartFile[] memberUploadedImage) {
		this.memberUploadedImage = memberUploadedImage;
	}
	public MultipartFile[] getMemberUploadedFile() {
		return memberUploadedFile;
	}
	public void setMemberUploadedFile(MultipartFile[] memberUploadedFile) {
		this.memberUploadedFile = memberUploadedFile;
	}
	
	
	


	

}
