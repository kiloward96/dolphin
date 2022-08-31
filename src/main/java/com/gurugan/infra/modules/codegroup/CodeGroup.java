package com.gurugan.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup{
	
// commonCodeGroup
	private String seq;
	private String seqChar;
	private String groupName;
	private String groupNameEng;
	private Integer useYn;
	private Date regDate;
	private Integer delYn;
	private Date delDate;
//	getter setter
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getSeqChar() {
		return seqChar;
	}
	public void setSeqChar(String seqChar) {
		this.seqChar = seqChar;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getGroupNameEng() {
		return groupNameEng;
	}
	public void setGroupNameEng(String groupNameEng) {
		this.groupNameEng = groupNameEng;
	}
	public Integer getUseYn() {
		return useYn;
	}
	public void setUseYn(Integer useYn) {
		this.useYn = useYn;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Integer getDelYn() {
		return delYn;
	}
	public void setDelYn(Integer delYn) {
		this.delYn = delYn;
	}
	public Date getDelDate() {
		return delDate;
	}
	public void setDelDate(Date delDate) {
		this.delDate = delDate;
	}
	
}
