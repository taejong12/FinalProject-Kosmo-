package com.shop.controller;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.shop.dto.TestOneDto;
import com.shop.service.TestOneService;

@Controller
public class TestOneController {
		
	@Autowired
	private TestOneService service;
	
//	@RequestMapping("/store/search")
//	public String userlist(Model model) {
//		model.addAttribute("list" , service.list());
////		System.out.println(service.list());
////		int total=service.postCount();
////		System.out.println("total count:" + total);
//		return "/testBoardOne/list";
//	}
	
	
	@RequestMapping("/store/writeOne")
	public String writeForm() {
		return "/testBoardOne/writeForm";
	}
	
	@RequestMapping("/store/writingOne")
	public String write(HttpServletRequest req, Model model) {
		String itemDetail=req.getParameter("itemDetail");
		String itemStatus=req.getParameter("itemStatus");
		String itemDate=req.getParameter("itemDate");
		String alName=req.getParameter("alName");
		String alAbv=req.getParameter("alAbv");
		String alPrice=req.getParameter("alPrice");
		String alStock=req.getParameter("alStock");
		String kiName=req.getParameter("kiName");
		String flDanmat=req.getParameter("flDanmat");
		String flSinmat=req.getParameter("flSinmat");
		String flSsunmat=req.getParameter("flSsunmat");
		String flBody=req.getParameter("flBody");
		String flTansan=req.getParameter("flTansan");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("itemDetail", itemDetail);
		map.put("itemStatus", itemStatus);
		map.put("itemDate", itemDate);
		map.put("alName", alName);
		map.put("alAbv", alAbv);
		map.put("alPrice", alPrice);
		map.put("alStock", alStock);
		map.put("kiName", kiName);
		map.put("flDanmat", flDanmat);
		map.put("flSinmat", flSinmat);
		map.put("flSsunmat", flSsunmat);
		map.put("flBody", flBody);
		map.put("flTansan", flTansan);
		
//		int res = service.write(map);
//		System.out.println("writer:" + res);
		return "redirect:/store/search"; //redirect를 사용하면 주소 맵핑 방향으로 간다 
	}
	
	@RequestMapping("/store/viewOne")
	public String detailView(HttpServletRequest req, Model model, TestOneDto cri) {
		String uId = req.getParameter("alNum");
		model.addAttribute("dto",service.testOneView(uId));
		
		model.addAttribute("cri",cri);
		
		return "/testBoardOne/view"; // view 파일 jsp 쪽으로 간다
	}
	
	@RequestMapping("/store/deleteOne")
	public String delete(HttpServletRequest req, Model model) {
//		int res = service.delete(req.getParameter("boardNum"));
//		System.out.println("delete:" + res);
		return "redirect:/store/search";
	}
	
	@RequestMapping("/store/updateOne")
	public String updateForm(HttpServletRequest req, Model model) {
//		String uId = req.getParameter("boardNum");
//		model.addAttribute("dto",service.view(uId));
		return "/testBoardOne/updateForm";
	}
	
	@RequestMapping("/store/updatingOne")
	public String update(HttpServletRequest req, Model model) {
		String boardNum = req.getParameter("boardNum");
		String alName=req.getParameter("alName");
		String itemDetail=req.getParameter("itemDetail");
		String itemStatus=req.getParameter("itemStatus");
		String alPrice=req.getParameter("alPrice");
		String alStock=req.getParameter("alStock");
		
		Map<String, String> umap = new HashMap<String, String>();
		umap.put("boardNum", boardNum);
		umap.put("alName", alName);
		umap.put("itemDetail", itemDetail);
		umap.put("itemStatus", itemStatus);
		umap.put("alPrice", alPrice);
		umap.put("alStock", alStock);
	
//		int res = service.update(umap);
//		System.out.println("update:" + res);
		return "redirect:/store/search";
	}
	
	
	@RequestMapping("/store/chk_value")
	public @ResponseBody List<TestOneDto> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlAbv10, String[] chkAlAbv20, String[] chkAlAbv30,
			String[] chkAlPrice0, String[] chkAlPrice1, String[] chkAlPrice3, String[] chkAlPrice5, String[] chkAlPrice10) {
//		System.out.println(Arrays.toString(chkArray));
//		System.out.println(Arrays.toString(chkDanmat));
//		System.out.println(Arrays.toString(chkFlSinmat));
//		System.out.println(Arrays.toString(chkFlSsunmat));
//		System.out.println(Arrays.toString(chkFlBody));
//		System.out.println(Arrays.toString(chkFlTansan));
//		System.out.println(Arrays.toString(chkAlAbv));
//		System.out.println(Arrays.toString(chkAlAbv10));
//		System.out.println(Arrays.toString(chkAlAbv20));
//		System.out.println(Arrays.toString(chkAlAbv30));
//		System.out.println(Arrays.toString(chkAlPrice0));
//		System.out.println(Arrays.toString(chkAlPrice1));
//		System.out.println(Arrays.toString(chkAlPrice3));
//		System.out.println(Arrays.toString(chkAlPrice5));
//		System.out.println(Arrays.toString(chkAlPrice10));
		
		List<TestOneDto> result = service.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, 
				chkFlSsunmat, chkFlBody, chkFlTansan, 
				chkAlAbv, chkAlAbv10, chkAlAbv20, chkAlAbv30,
				chkAlPrice0, chkAlPrice1, chkAlPrice3, chkAlPrice5, chkAlPrice10);
		return result;
	}

	
	@RequestMapping("/store/search")
	public String testOneGetlistPaging(Model model, TestOneDto cri) {
		System.out.println(cri);
		model.addAttribute("list", service.testOneGetlistPaging(cri));
		
		int total = service.getTotal();
        
        TestOneDto pageMake = new TestOneDto(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
		
        
		return "/testBoardOne/list";
	}
	
	
	
	

	
	
	
	
	
	
	
}
