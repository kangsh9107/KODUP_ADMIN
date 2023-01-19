package com.kodup.admin.certification;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Service
@Transactional
public class AdminCertificationService {
	
	CertificationPageVo cpVo;

	@Autowired
	AdminCertificationMapper AdminCertificationMapper;
	
	Object savePoint;
	
	@Autowired
    PlatformTransactionManager manager;
	
	TransactionStatus status;

/*--------------------------corp-----------------------------------------------------------*/
	public List<AdminCertificationVo> corp_select(CertificationPageVo cpVo) {
		int totsize = AdminCertificationMapper.totlist(cpVo);
		cpVo.setTotSize(totsize);
		this.cpVo = cpVo;
		List<AdminCertificationVo> list = AdminCertificationMapper.corp_select(cpVo);
		return list;
	}
	
	public boolean corp_approve(AdminCertificationVo acVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminCertificationMapper.corp_approve(acVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
		
	}
/*-------------------------mento-----------------------------------------------------------*/	
	public List<AdminCertificationVo> mento_select(CertificationPageVo cpVo) {
		int totsize = AdminCertificationMapper.mento_totlist(cpVo);
		cpVo.setTotSize(totsize);
		this.cpVo = cpVo;
		List<AdminCertificationVo> list = AdminCertificationMapper.mento_select(cpVo);
		return list;
	}

	public boolean change_grade(AdminCertificationVo acVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminCertificationMapper.change_grade(acVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
		
	}
	
	public boolean change_mento_status(AdminCertificationVo acVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminCertificationMapper.change_mento_status(acVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
		
	}
	
	public CertificationPageVo getcpVo() {return cpVo;}
}
