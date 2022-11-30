package com.shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.TestOneDao;
import com.shop.dto.TestOneDto;

@Service
public class TestOneServiceImpl implements TestOneService{

	@Autowired
	TestOneDao dao;
	
	
	@Override
	public List<TestOneDto> list() {
		return dao.listDao();
	}

	@Override
	public TestOneDto view(String alNum) {
		
		return dao.viewDao(alNum);
	}

	@Override
	public int write(Map<String, String> map) {
		
		return dao.writeDao(map);
	}

	@Override
	public int delete(String alNum) {
	
		return dao.deleteDao(alNum);
	}

	@Override
	public int count() {

		return dao.postCount();
	}

	@Override
	public int update(Map<String, String> umap) {
		
		return dao.updateDao(umap);
	}

	@Override
	public List<TestOneDto> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlAbv10, String[] chkAlAbv20, String[] chkAlAbv30,
			String[] chkAlPrice0, String[] chkAlPrice1, String[] chkAlPrice3, String[] chkAlPrice5, String[] chkAlPrice10) {
//		for(int i=0; i<chkArray.length; i++ ) {
//			System.out.println("service: "+chkArray[i]);
//		}
		return dao.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, chkFlSsunmat, 
				chkFlBody, chkFlTansan, chkAlAbv, chkAlAbv10, chkAlAbv20, chkAlAbv30,
				chkAlPrice0, chkAlPrice1, chkAlPrice3, chkAlPrice5, chkAlPrice10);
	}
	

	
	

}
