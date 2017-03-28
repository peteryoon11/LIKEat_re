package com.entity;

import java.util.List;

public class PageDTO {
	
	private List<StoreDTO> list;
	private int totRecord;
	private int perPage = 20;
	private int curPage;
	
	public PageDTO() {
	}

	public PageDTO(List<StoreDTO> list, int totRecord, int perPage, int curPage) {
		super();
		this.list = list;
		this.totRecord = totRecord;
		this.perPage = perPage;
		this.curPage = curPage;
	}

	public List<StoreDTO> getList() {
		return list;
	}

	public void setList(List<StoreDTO> list) {
		this.list = list;
	}

	public int getTotRecord() {
		return totRecord;
	}

	public void setTotRecord(int totRecord) {
		this.totRecord = totRecord;
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	@Override
	public String toString() {
		return "PageDTO [list=" + list + ", totRecord=" + totRecord + ", perPage=" + perPage + ", curPage=" + curPage
				+ "]";
	}
	
}
