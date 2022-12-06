package com.shop.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.OrderDTO;
import com.shop.login.LoginService;
import com.shop.service.OrderService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import net.minidev.json.JSONObject;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping("/orderForm")
	public String orderForm() {
		return "/order/orderTest";
	}
	
	@RequestMapping("/payment/callback_receive")
	public ResponseEntity<?> callback_receive(@RequestBody Map<String, Object> model){
		String process_result="결제성공!";
	
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "application/json; charset=UTF-8");
		JSONObject responseObj = new JSONObject();
		
		try {
			String imp_uid = (String)model.get("imp_uid");
			String merchant_uid = (String)model.get("merchant_uid");
			boolean success = (Boolean)model.get("success");
			String error_msg = (String)model.get("error_msg");
			
			System.out.println("---callback receive---");
			System.out.println("------");
			System.out.println("imp_uid : "+imp_uid);
			System.out.println("merchant_uid : "+merchant_uid);
			System.out.println("success :" + success);
			
			if(success == true) {
				
				String api_key ="4642533202032342";
				String api_secret ="Icr8FLXyAgye21Cka5laPPTv8vYG6qA97zc17hq8Vq4tcgH2PViqCjHJOC7tVALXQohN5oJjfnXAVY8f";
			
				IamportClient ic = new IamportClient(api_key, api_secret);
				IamportResponse<Payment> response = ic.paymentByImpUid(imp_uid);
				
				BigDecimal iamport_amount = response.getResponse().getAmount();
				
				responseObj.put("process_result", "결제성공");
				
			} else {
				System.out.println("error_msg : " + error_msg);
				responseObj.put("process_result", "결제실패 : " + error_msg);
			}
		} catch(Exception e) {
			e.printStackTrace();
			responseObj.put("process_result", "결제실패 : 관리자에게 문의해 주세요.");
		}
		
		return new ResponseEntity<String>(responseObj.toString(), responseHeaders, HttpStatus.OK);
		
		
	}
	
	// 웹훅 수신 처리
	@RequestMapping("/payment/webhook_receive")
	public ResponseEntity<?> webhook_receive(@RequestBody Map<String, Object> model){
		HttpHeaders responHeaders = new HttpHeaders();
		responHeaders.add("Content-Type", "application/json; charset=UTF-8");
		
		try {
			String imp_uid = (String) model.get("imp_uid");
			String merchant_uid = (String)model.get("merchant_uid");
			String status = (String)model.get("status");
			
			System.out.println("webhook_receive");
			System.out.println("imp_uid:"+imp_uid);
			System.out.println("merchant_uid:"+merchant_uid);
			System.out.println("status:"+status);
			
			String api_key ="4642533202032342";
			String api_secret ="Icr8FLXyAgye21Cka5laPPTv8vYG6qA97zc17hq8Vq4tcgH2PViqCjHJOC7tVALXQohN5oJjfnXAVY8f";
			IamportClient ic = new IamportClient(api_key, api_secret);
			IamportResponse<Payment> response = ic.paymentByImpUid(imp_uid);
			
			BigDecimal iamport_amount = response.getResponse().getAmount();
			
			 
			} catch(Exception e) {
				e.printStackTrace();
				return new ResponseEntity(new CustomErrorType("서버처리 오류"), HttpStatus.INTERNAL_SERVER_ERROR);
			}
			
			return new ResponseEntity<String>("결과반영 성공", responHeaders, HttpStatus.OK);
	
	
			
		}
	}
	

