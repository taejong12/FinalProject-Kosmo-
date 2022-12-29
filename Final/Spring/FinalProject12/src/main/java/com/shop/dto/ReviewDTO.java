package com.shop.dto;



import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewDTO {
   private int alNum;
   private int reNum;
   private String alName;
   private String alOpic;
   private String orPayDate;
   private String userName;
   private String title;
   private String content;
   private int star;
   private String reDate;
}