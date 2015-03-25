package com.itxxz.framework.base;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;

public abstract class AbstractDO implements Serializable {
	
	private static final long serialVersionUID = -3942149913171834745L;

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	public final static int PAGE_SHOW_COUNT = 10;
	private int pageNum = 1;
	private int pageSize = 0;
	private int totalCount = 0;
	private String keywords;
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize > 0 ? pageSize : PAGE_SHOW_COUNT;
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
	
	public String getKeywords() {
		return "".equals(keywords)? null : keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	
	public int getStartIndex() {
		int pageNum = this.getPageNum() > 0 ? this.getPageNum() - 1 : 0;
		return pageNum * this.getPageSize();
	}
	
}
