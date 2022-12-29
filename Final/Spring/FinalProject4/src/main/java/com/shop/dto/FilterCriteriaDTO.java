package com.shop.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FilterCriteriaDTO {
	 /* 현재 페이지 */
    private int pageNum;
    
    /* 한 페이지 당 보여질 게시물 갯수 */
    private int amount;
    
    /* 기본 생성자 -> 기봅 세팅 : pageNum = 1, amount = 10 */
    public FilterCriteriaDTO() {
        this(1,10);
    }
    
    /* 생성자 => 원하는 pageNum, 원하는 amount */
    public FilterCriteriaDTO(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }
    
//    // 카테고리 코드
//    private String cateCode;
//    
    // 검색 키워드
    private String keyword;
    
//    // 검색 타입
//    private String type;
//    
//    private String[] typeArr;
//    
//   public void setType(String type) {
//    	this.type=type;
//    	this.typeArr = type.split("");
//   }
//    
//    // 검색 타입 데이터 배열 변환
//   public String[] getTypeArr() {
//    	return type == null? new String[] {}:type.split("");
//  }
    
}
