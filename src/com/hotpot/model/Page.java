package com.hotpot.model;

import java.io.Serializable;

public class Page implements Serializable {

	private static final long serialVersionUID = 1L;

	private int pageNow = 1; //当前页数
	private int pageSize = 8;  //每页显示的数量
	private int totalCount; //总记录数
	private int totalPageCount; //总页数
	private int startPos;  //开始位置
	private boolean hasFirst;  //是否有首页
	private boolean hasPre;	 //是否有前一页
	private boolean hasNext;   //是否有后一页
	private boolean hasLast;   //是否有尾页
	

	//构造函数传入记录数和当前页
	public Page(int pageNow, int totalCount) {
		super();
		this.pageNow = pageNow;
		this.totalCount = totalCount;
	}
	
	//获取总页数
	public int  getTotalPageCount() {
		totalPageCount = getTotalCount()/getPageSize();
		return (totalCount/pageSize == 0)?totalPageCount:totalPageCount+1;
		
	}
	
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	
	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getStartPos() {
		return (pageNow-1)*pageSize;
	}

	public void setStartPos(int startPos) {
		this.startPos = startPos;
	}

	public boolean isHasFirst() {
		return (pageNow==1)?false:true;
	}

	public void setHasFirst(boolean hasFirst) {
		this.hasFirst = hasFirst;
	}

	public boolean isHasPre() {
		return isHasFirst()?true:false;
	}

	public void setHasPre(boolean hasPre) {
		this.hasPre = hasPre;
	}

	public boolean isHasNext() {
		return hasNext;
	}

	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}

	public boolean isHasLast() {
		return (pageNow ==getTotalCount())?false:true;
	}

	public void setHasLast(boolean hasLast) {
		this.hasLast = hasLast;
	}


}
