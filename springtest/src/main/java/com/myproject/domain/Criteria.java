package com.myproject.domain;

public class Criteria {


    private int pageNum;		//현재 페이지
    private int amount; 		// 한 페이지 당 보여질 게시물 갯수 
    private int skip;			
    private String keyword;		//검색어

    public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	/* 기본 생성자 -> 기봅 세팅 : pageNum = 1, amount = 10 */
    public Criteria() {
        this(1,5);
        this.skip = 0;
    }

    /* 생성자 => 원하는 pageNum, 원하는 amount */
    public Criteria(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
        this.skip = (pageNum-1)*amount;
    }

    public int getPageNum() {
    	return pageNum;
    }

    public void setPageNum(int pageNum) {
    	this.skip = (pageNum-1)*this.amount;
    	this.pageNum = pageNum;
    }
    public int getAmount() {
    	return amount;
    }
    public void setAmount(int amount) {
    	this.skip = (this.pageNum-1)*amount;
    	this.amount = amount;
    }

    @Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", keyword=" + keyword + "]";
	}

}