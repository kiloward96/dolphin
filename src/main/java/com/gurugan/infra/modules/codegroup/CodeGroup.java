package com.gurugan.infra.modules.codegroup;

import java.util.Date;

import com.gurugan.infra.modules.code.Code;


public class CodeGroup extends Code{
	
	private String CCseq;
	private String CCcommonCodeGroup_seq;
	private Integer CCdelYn;
	private Integer xCCcount;
	private String CCseqChar;
	
	
	private String CCGseq;
	private String CCGseqChar;
	private String CCGgroupName;
	private String CCGgroupNameEng;
	private Integer CCGuseYn;
	private Date CCGregDate;
	private Date CCGdelDate;
	private Date CCGmodDate;
	private Integer CCGdelYn;
	
	private String CCGdescription;

	// for cache
//	public static Object cachedCodeArrayList;
	
	public String getCCseq() {
		return CCseq;
	}

	public void setCCseq(String cCseq) {
		CCseq = cCseq;
	}

	public Integer getCCdelYn() {
		return CCdelYn;
	}

	public void setCCdelYn(Integer cCdelYn) {
		CCdelYn = cCdelYn;
	}

	public Integer getxCCcount() {
		return xCCcount;
	}

	public void setxCCcount(Integer xCCcount) {
		this.xCCcount = xCCcount;
	}

	public String getCCGseq() {
		return CCGseq;
	}

	public void setCCGseq(String cCGseq) {
		CCGseq = cCGseq;
	}

	public String getCCGseqChar() {
		return CCGseqChar;
	}

	public void setCCGseqChar(String cCGseqChar) {
		CCGseqChar = cCGseqChar;
	}

	public String getCCGgroupName() {
		return CCGgroupName;
	}

	public void setCCGgroupName(String cCGgroupName) {
		CCGgroupName = cCGgroupName;
	}

	public String getCCGgroupNameEng() {
		return CCGgroupNameEng;
	}

	public void setCCGgroupNameEng(String cCGgroupNameEng) {
		CCGgroupNameEng = cCGgroupNameEng;
	}

	public Integer getCCGuseYn() {
		return CCGuseYn;
	}

	public void setCCGuseYn(Integer cCGuseYn) {
		CCGuseYn = cCGuseYn;
	}

	public Date getCCGregDate() {
		return CCGregDate;
	}

	public void setCCGregDate(Date cCGregDate) {
		CCGregDate = cCGregDate;
	}

	public Date getCCGdelDate() {
		return CCGdelDate;
	}

	public void setCCGdelDate(Date cCGdelDate) {
		CCGdelDate = cCGdelDate;
	}

	public Date getCCGmodDate() {
		return CCGmodDate;
	}

	public void setCCGmodDate(Date cCGmodDate) {
		CCGmodDate = cCGmodDate;
	}

	public Integer getCCGdelYn() {
		return CCGdelYn;
	}

	public void setCCGdelYn(Integer cCGdelYn) {
		CCGdelYn = cCGdelYn;
	}

	public String getCCGdescription() {
		return CCGdescription;
	}

	public void setCCGdescription(String cCGdescription) {
		CCGdescription = cCGdescription;
	}

	public String getCCcommonCodeGroup_seq() {
		return CCcommonCodeGroup_seq;
	}

	public void setCCcommonCodeGroup_seq(String cCcommonCodeGroup_seq) {
		CCcommonCodeGroup_seq = cCcommonCodeGroup_seq;
	}

	public String getCCseqChar() {
		return CCseqChar;
	}

	public void setCCseqChar(String cCseqChar) {
		CCseqChar = cCseqChar;
	}
	
	
}
