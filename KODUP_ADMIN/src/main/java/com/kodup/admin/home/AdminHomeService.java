package com.kodup.admin.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;



@Service
@Transactional
public class AdminHomeService {

	@Autowired
	AdminHomeMapper AdminHomeMapper;
	
	Object savePoint;
	
	@Autowired
    PlatformTransactionManager manager;
	
	TransactionStatus status;
	
	public int mento_request(AdminHomeVo ahVo) {
		int mento = AdminHomeMapper.mento_request(ahVo);
		return mento;
	}
	
	public int pixel_request(AdminHomeVo ahVo) {
		int pixel = AdminHomeMapper.pixel_request(ahVo);
		return pixel;
	}
	
	public int corp_request(AdminHomeVo ahVo) {
		int corp = AdminHomeMapper.corp_request(ahVo);
		return corp;
	}
	
    public String pixel_id(AdminHomeVo ahVo) {
    	System.out.println("서비스 연결 성공");
    	String id = AdminHomeMapper.pixel_id(ahVo);
    	return id;
    }
    
    public String mento_id(AdminHomeVo ahVo) {
    	System.out.println("서비스 연결 성공");
    	String id = AdminHomeMapper.mento_id(ahVo);
    	return id;
    }
    
    public String corp_id(AdminHomeVo ahVo) {
    	System.out.println("서비스 연결 성공");
    	String id = AdminHomeMapper.corp_id(ahVo);
    	return id;
    }
}
