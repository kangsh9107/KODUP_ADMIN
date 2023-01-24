package com.kodup.admin.pixel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;




@Transactional
@Service
public class AdminPixelService {
	AdminPixelPageVo appVo;
	
	public AdminPixelPageVo getappVo() {return appVo;}
	
	@Autowired
	PlatformTransactionManager manager;
	TransactionStatus status;
	
	@Autowired
	AdminPixelMapper mapper;
	
	
	public List<AdminPixelVo> select_applylist(AdminPixelPageVo appVo) {
		int totSize = mapper.totList();
		appVo.setTotSize(totSize);
		
		this.appVo = appVo;
		List<AdminPixelVo> applyList= null;
		applyList = mapper.select_applylist(appVo);
		
		//mapper.xml에서 if,choose,when을 활용하여 하나의 매퍼로 압축할수있다.
		if(appVo.getStatusFilter() == 0) {
			applyList = mapper.select_applylist(appVo);
		}else if(appVo.getStatusFilter() == 1) {
			applyList =mapper.select_applylist_filter_status1(appVo);
		}else if(appVo.getStatusFilter() == 2) {
			applyList =mapper.select_applylist_filter_status2(appVo);
		}
		
		
		return applyList;
	}
	
	public AdminPixelVo select_pixelrate(AdminPixelVo apVo) {
		apVo = mapper.select_pixelrate();
		
		return apVo;
	}
	
	public AdminPixelVo select_exchangeData(AdminPixelVo apVo) {
		apVo = mapper.select_pixelrate();
		
		//유저가 환전신청하면 멤버 테이블의 픽셀이 빠지고 환전신청리스트테이블 픽셀로 옮겨간다.
		//전체픽셀 = member테이블 총 pixel + pixel_exchange_list테이블 총 apply_pixel
		
		//멤버테이블 등급별 총 픽셀
		apVo.setTotNormalPixel(mapper.select_totPixelByGrade(0));
		apVo.setTotPersonalPixel(mapper.select_totPixelByGrade(1));
		apVo.setTotPlusPixel(mapper.select_totPixelByGrade(2));
		apVo.setTotPartnerPixel(mapper.select_totPixelByGrade(3));
		
		//픽셀익스체인지리스트테이블 등급별 총 어플라이픽셀
		apVo.setTotNormalApplyPixel(mapper.select_totApplyPixelByGrade(0));
		apVo.setTotPersonalApplyPixel(mapper.select_totApplyPixelByGrade(1));
		apVo.setTotPlusApplyPixel(mapper.select_totApplyPixelByGrade(2));
		apVo.setTotPartnerApplyPixel(mapper.select_totApplyPixelByGrade(3));
		 
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
		int totPixel = mapper.select_totPixel();
		
		return totPixel;
	}
	public int select_totApplyPixel(){
		int totApplyPixel=mapper.select_totApplyPixel();
		
		return totApplyPixel;
	}
	public int select_budget() {
		int budget = mapper.select_budget();
		return budget;
	}
	public boolean pixel_approve(AdminPixelVo apVo) {
		boolean b = true;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		Object savePoint = status.createSavepoint();
		
		int cnt = mapper.pixel_approve(apVo);//status
		
		if(cnt<1)b=false;
		if(b) manager.commit(status);
		else status.rollbackToSavepoint(savePoint);

		return b;
	}
	public boolean pixel_approve_history(AdminPixelVo apVo) {
		boolean b = true;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		Object savePoint = status.createSavepoint();
		
		int cnt=mapper.pixel_approve_history(apVo);//history
		
		if(cnt<1)b=false;
		if(b) manager.commit(status);
		else status.rollbackToSavepoint(savePoint);
		
		return b;
	}
	public boolean pixel_approve_budget_minus(AdminPixelVo apVo) {
		boolean b = true;
		status = manager.getTransaction(new DefaultTransactionDefinition());
		Object savePoint = status.createSavepoint();
		
		int cnt=mapper.budget_minus(apVo);//budget 
		
		if(cnt<1)b=false;
		if(b) manager.commit(status);
		else status.rollbackToSavepoint(savePoint);
		
		return b;
	}
	
}
