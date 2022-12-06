package com.shop.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderDTO {
	
	private String orderNum; // 주문번호
	private String userName; // 로그인 아이디
	private java.sql.Date orderDate; // 주문일자
	private int deleveryAddress1 ; // 우편번호
	private String deleveryAddress2; // 도로명주소
	private String deleveryAddress3; // 상세주소
	private String payMethod; // 결제방법
	private int totalPrice; // 총가격
	private String phone; // 폰번호
	private String request;
//	private String impUid = ""; // 아임포트 결제번호 추가
	

	
	

}
