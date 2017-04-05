package com.entity;

public class SreplyDTO {
/*
	SID VARCHAR2(5 BYTE) not null -- store 의 foregine 키로 가져오기 
	   ,rID VARCHAR2(7 BYTE) not null -- reply 번호 sid 에 종솟
	   ,rcontent VARCHAR2(2000 BYTE) not null -- 내용 
	
	   ,rappraisal VARCHAR2(2 BYTE) not null -- 평가 1 3, 5 
	   ,rwriteday VARCHAR2(200 BYTE) DEFAULT SYSDATE 
	   */
	
	private String sid;
	private String rid;
	private String rcontent;
	private String rappr;
	private String rwrda;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRappr() {
		return rappr;
	}
	public void setRappr(String rappr) {
		this.rappr = rappr;
	}
	public String getRwrda() {
		return rwrda;
	}
	public void setRwrda(String rwrda) {
		this.rwrda = rwrda;
	}
	public SreplyDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SreplyDTO(String sid, String rid, String rcontent, String rappr, String rwrda) {
		super();
		this.sid = sid;
		this.rid = rid;
		this.rcontent = rcontent;
		this.rappr = rappr;
		this.rwrda = rwrda;
	}
	@Override
	public String toString() {
		return " " + sid + " " + rid + " " + rcontent + " " + rappr + " " + rwrda ;
	}
	
	
	
	
}
