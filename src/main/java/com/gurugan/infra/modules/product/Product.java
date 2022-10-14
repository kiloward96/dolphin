package com.gurugan.infra.modules.product;

import java.util.Date;

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
	
}
