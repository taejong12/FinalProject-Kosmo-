package com.shop.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeDTO {
   private int noNum;
   private String noTitle;
   private String noContent;
   private String noWriter;
   private java.sql.Date noPostdate;   
   private int noCount;
   
}