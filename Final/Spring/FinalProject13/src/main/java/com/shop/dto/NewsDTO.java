package com.shop.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NewsDTO {
	private int newsnum;
	private String postdate;
	private String title;
	private String content;
	private String link;
}
