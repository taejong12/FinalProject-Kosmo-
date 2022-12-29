package com.shop.controller;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.dto.Criteria;
import com.shop.dto.PageDto;
import com.shop.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {
	
	@Autowired
	NewsService service;
	
	@RequestMapping("/")
	public String root() {
		return "redirect:list";//redirect:list list페이지로 보내겠다.
	}
	
	@RequestMapping("/list")
	public String userlist(Model model) {
		model.addAttribute("list",service.list());
		
		return "/news/newslist";
	}
	
	@RequestMapping("/view")
	public String detailView(HttpServletRequest req, Model model) {
		String num = req.getParameter("num");
		model.addAttribute("dto",service.view(num));
		return "news/newsView";//view.jsp로 이동
	}
	
	/* 상품 관리(상품목록) 페이지 접속 */
	@RequestMapping(value = "listtest", method = RequestMethod.GET)
	public void goodsManageGET(Criteria cri, Model model) throws Exception{
		
		
		/* 상품 리스트 데이터 */
		List list = service.goodGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}
		
		/* 페이지 인터페이스 데이터 */
		model.addAttribute("pageMaker", new PageDto(cri, service.goodGetTotal(cri)));
		
	}

}
