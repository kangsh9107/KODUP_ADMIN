package com.kodup.admin.certification;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;

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
	
	public List<AdminCertificationVo> corp_select(CertificationPageVo cpVo) {
		int totsize = AdminCertificationMapper.totlist(cpVo);
		cpVo.setTotSize(totsize);
		this.cpVo = cpVo;
		List<AdminCertificationVo> list = AdminCertificationMapper.corp_select(cpVo);
		return list;
	}

	public CertificationPageVo getcpVo() {return cpVo;}
}
