package com.gurugan.infra.modules.product;

import com.gurugan.infra.common.base.BaseVo;

public class ProductVo extends BaseVo {
	
	// vo option
	private Integer shOption;
	private String shValue;
	private Integer shDelYn;
	private Integer shOption2;
	private String shValue2;
	private String shDate;

	private String PDseq;
	private Integer PDdelYn;
	
	private String POseq;
	private String POproductSeq;
	private String POdelYn;
	
	// getter setter
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

	public String getShDate() {
		return shDate;
	}

	public void setShDate(String shDate) {
		this.shDate = shDate;
	}

	public String getPDseq() {
		return PDseq;
	}

	public void setPDseq(String pDseq) {
		PDseq = pDseq;
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

	public String getPOproductSeq() {
		return POproductSeq;
	}

	public void setPOproductSeq(String pOproductSeq) {
		POproductSeq = pOproductSeq;
	}

	public String getPOdelYn() {
		return POdelYn;
	}

	public void setPOdelYn(String pOdelYn) {
		POdelYn = pOdelYn;
	}
	

	
	
}
