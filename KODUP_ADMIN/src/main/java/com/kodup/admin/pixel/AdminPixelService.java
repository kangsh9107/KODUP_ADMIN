package com.kodup.admin.pixel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;



@Transactional
@Service
public class AdminPixelService {
	@Autowired
	PlatformTransactionManager manager;
	TransactionStatus status;
	
	@Autowired
	AdminPixelMapper mapper;
	
	public AdminPixelVo select_pixelrate() {
		AdminPixelVo apVo = null;
		apVo = mapper.select_pixelrate();
		return apVo;
	}
	
	public boolean update_rate(AdminPixelVo apVo) {
		boolean b = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		Object savePoint = status.createSavepoint();
		
		int cnt = mapper.update_rate(apVo);
		
		if(cnt<1) {b=false;}
		
		if(b) manager.commit(status);
		else status.rollbackToSavepoint(savePoint);
		
		return b;
	}
	public int select_totPixel() {
		int totPixel=0;
		totPixel = mapper.select_totPixel();
		
		
		return totPixel;
	}
	
	
}
