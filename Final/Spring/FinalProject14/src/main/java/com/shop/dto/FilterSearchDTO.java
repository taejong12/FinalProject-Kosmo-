package com.shop.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FilterSearchDTO {
	
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
    
    /* 기본 생성자 -> 기봅 세팅 : pageNum = 1, amount = 12 */
    public FilterSearchDTO() {
        this(1,12);
    }
    
    /* 생성자 => 원하는 pageNum, 원하는 amount */
    public FilterSearchDTO(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }
    

}
