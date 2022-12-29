package com.shop.dto;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class OrderHisDTO {
	private String orNum; // 주문번호
	private int orTotalAmount; // 총수량
	private String orPayStatus; // 결제상태
	private int orTotalPrice; // 총가격
	private Date orPayDate; // 결제일자
	private String orPostNum ; // 우편번호
	private String orRoadAddress; // 도로명주소
	private String orDetailAddress; // 상세주소
	private String userName; // 회원 아이디
	
	private List<OrderItemDTO> orders; //상품들
}
