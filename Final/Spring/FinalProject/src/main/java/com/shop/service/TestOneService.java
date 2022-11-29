package com.shop.service;

import java.util.List;
import java.util.Map;

import com.shop.dto.TestOneDto;



public interface TestOneService {
	public List<TestOneDto> list();
	public TestOneDto view(String alNum);
	public int write(Map<String, String> map);
	public int delete(String alNum);
	public int count();
	public int update(Map<String, String> umap);
	public List<TestOneDto> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan);
	
}
