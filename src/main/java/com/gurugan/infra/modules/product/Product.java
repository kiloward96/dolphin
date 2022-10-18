package com.gurugan.infra.modules.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.gurugan.infra.common.base.Base;

public class Product extends Base{
	
	// product table
	private String PDseq;
	private String PDproductName;
	private Integer PDprice;
	private Integer PDstock;
	private String PDcategory;
	private Date PDuploadDate;
	private Integer PDstatus;
	private Integer PDdelYn;
	
	// product Option
	private String POseq;
	private String POoptionMain;
	private String POoptionSub;
	private String POproductSeq;
	private Integer POdelYn;
	
	// cache 관련 dto
	private String CCGseq;
	
	// test 221018
	private MultipartFile[] uploadImgProfile;
//	private Integer[] uploadImgProfileProcess;
//	private String[] uploadImgProfilePathFile;
//	private String[] uploadImgProfileSeq;
	private Integer[] uploadImgProfileSort;
	private String[] uploadImgProfileDeleteSeq;
	private String[] uploadImgProfileDeletePathFile;
	
	private MultipartFile[] uploadImg;
//	private Integer[] uploadImgProcess;
//	private String[] uploadImgPathFile;
//	private String[] uploadImgSeq;
	private Integer[] uploadImgSort;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	private Integer uploadImgMaxNumber;
	
	private MultipartFile[] uploadFile;
//	private Integer[] uploadFileProcess;
//	private String[] uploadFilePathFile;
//	private String[] uploadFileSeq;
	private Integer[] uploadFileSort;
	private String[] uploadFileDeleteSeq;
	private String[] uploadFileDeletePathFile;
	
	// getter, setter
	
	public String getPDseq() {
		return PDseq;
	}
	public void setPDseq(String pDseq) {
		PDseq = pDseq;
	}
	public String getPDproductName() {
		return PDproductName;
	}
	public void setPDproductName(String pDproductName) {
		PDproductName = pDproductName;
	}
	public Integer getPDprice() {
		return PDprice;
	}
	public void setPDprice(Integer pDprice) {
		PDprice = pDprice;
	}
	public Integer getPDstock() {
		return PDstock;
	}
	public void setPDstock(Integer pDstock) {
		PDstock = pDstock;
	}
	public String getPDcategory() {
		return PDcategory;
	}
	public void setPDcategory(String pDcategory) {
		PDcategory = pDcategory;
	}
	public Date getPDuploadDate() {
		return PDuploadDate;
	}
	public void setPDuploadDate(Date pDuploadDate) {
		PDuploadDate = pDuploadDate;
	}
	public Integer getPDstatus() {
		return PDstatus;
	}
	public void setPDstatus(Integer pDstatus) {
		PDstatus = pDstatus;
	}
	public Integer getPDdelYn() {
		return PDdelYn;
	}
	public void setPDdelYn(Integer pDdelYn) {
		PDdelYn = pDdelYn;
	}
	public String getPOseq() {
		return POseq;
	}
	public void setPOseq(String pOseq) {
		POseq = pOseq;
	}
	public String getPOoptionMain() {
		return POoptionMain;
	}
	public void setPOoptionMain(String pOoptionMain) {
		POoptionMain = pOoptionMain;
	}
	public String getPOoptionSub() {
		return POoptionSub;
	}
	public void setPOoptionSub(String pOoptionSub) {
		POoptionSub = pOoptionSub;
	}
	public String getPOproductSeq() {
		return POproductSeq;
	}
	public void setPOproductSeq(String pOproduct_seq) {
		POproductSeq = pOproduct_seq;
	}
	public Integer getPOdelYn() {
		return POdelYn;
	}
	public void setPOdelYn(Integer pOdelYn) {
		POdelYn = pOdelYn;
	}
	public String getCCGseq() {
		return CCGseq;
	}
	public void setCCGseq(String cCGseq) {
		CCGseq = cCGseq;
	}
	public MultipartFile[] getUploadImgProfile() {
		return uploadImgProfile;
	}
	public void setUploadImgProfile(MultipartFile[] uploadImgProfile) {
		this.uploadImgProfile = uploadImgProfile;
	}
	public Integer[] getUploadImgProfileSort() {
		return uploadImgProfileSort;
	}
	public void setUploadImgProfileSort(Integer[] uploadImgProfileSort) {
		this.uploadImgProfileSort = uploadImgProfileSort;
	}
	public String[] getUploadImgProfileDeleteSeq() {
		return uploadImgProfileDeleteSeq;
	}
	public void setUploadImgProfileDeleteSeq(String[] uploadImgProfileDeleteSeq) {
		this.uploadImgProfileDeleteSeq = uploadImgProfileDeleteSeq;
	}
	public String[] getUploadImgProfileDeletePathFile() {
		return uploadImgProfileDeletePathFile;
	}
	public void setUploadImgProfileDeletePathFile(String[] uploadImgProfileDeletePathFile) {
		this.uploadImgProfileDeletePathFile = uploadImgProfileDeletePathFile;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer[] getUploadImgSort() {
		return uploadImgSort;
	}
	public void setUploadImgSort(Integer[] uploadImgSort) {
		this.uploadImgSort = uploadImgSort;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer[] getUploadFileSort() {
		return uploadFileSort;
	}
	public void setUploadFileSort(Integer[] uploadFileSort) {
		this.uploadFileSort = uploadFileSort;
	}
	public String[] getUploadFileDeleteSeq() {
		return uploadFileDeleteSeq;
	}
	public void setUploadFileDeleteSeq(String[] uploadFileDeleteSeq) {
		this.uploadFileDeleteSeq = uploadFileDeleteSeq;
	}
	public String[] getUploadFileDeletePathFile() {
		return uploadFileDeletePathFile;
	}
	public void setUploadFileDeletePathFile(String[] uploadFileDeletePathFile) {
		this.uploadFileDeletePathFile = uploadFileDeletePathFile;
	}
	
	
	
}
