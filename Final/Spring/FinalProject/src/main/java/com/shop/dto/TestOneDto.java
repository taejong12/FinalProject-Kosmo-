package com.shop.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TestOneDto {
	private int kiNum; // 주종번호
	private String kiName; // 주종이름
	private String alOpic; // 주류사진
	private String alName; // 주류이름
	private int alAbv; // 도수
	private int alPrice; // 가격
	private int alStock; // 재고
	private int alNum; // 주류번호
	private int flDanmat; // 단맛
	private int flSinmat; // 신맛
	private int flSsunmat; // 쓴맛
	private int flBody; // 농도
	private int flTansan; // 탄산
	
	/* 현재 페이지 */
    private int pageNum;
    
    /* 한 페이지 당 보여질 게시물 갯수 */
    private int amount;
    
    /* 기본 생성자 -> 기봅 세팅 : pageNum = 1, amount = 10 */
    public TestOneDto() {
        this(1,10);
    }
    
    /* 생성자 => 원하는 pageNum, 원하는 amount */
    public TestOneDto(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }
    
    /* 시작 페이지 */
    private int startPage;
    
    /* 끝 페이지 */
    private int endPage;
    
    /* 이전 페이지, 다음 페이지 존재유무 */
    private boolean prev, next;
    
    /*전체 게시물 수*/
    private int total;
    
    /* 현재 페이지, 페이지당 게시물 표시수 정보 */
    private TestOneDto cri;
    
    /* 생성자 */
    public TestOneDto(TestOneDto cri, int total) {
        
        this.cri = cri;
        this.total = total;
        
        /* 마지막 페이지 */
        this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
        /* 시작 페이지 */
        this.startPage = this.endPage - 9;
        
        /* 전체 마지막 페이지 */
        int realEnd = (int)(Math.ceil(total * 1.0/cri.getAmount()));
        
        /* 전체 마지막 페이지(realend)가 화면에 보이는 마지막페이지(endPage)보다 작은 경우, 보이는 페이지(endPage) 값 조정 */
        if(realEnd < this.endPage) {
            this.endPage = realEnd;
        }
        
        /* 시작 페이지(startPage)값이 1보다 큰 경우 true */
        this.prev = this.startPage > 1;
        
        /* 마지막 페이지(endPage)값이 1보다 큰 경우 true */
        this.next = this.endPage < realEnd;
        
        
    }
    
    
    
    

	
}
