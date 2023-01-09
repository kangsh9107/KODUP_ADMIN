package com.kodup.admin.totalboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminTotalboardService {

    PageVo pVo;
	
	@Autowired
	AdminTotalboardMapper AdminTotalboardMapper;
	
	Object savePoint;
	
	@Autowired
	PlatformTransactionManager manager;
	
	TransactionStatus status;
	
	public List<AdminTotalboardVo> select(PageVo pVo) {
		int totSize = AdminTotalboardMapper.totList(pVo);
		pVo.setTotSize(totSize);
		this.pVo = pVo;
		List<AdminTotalboardVo> list = AdminTotalboardMapper.select(pVo);
		return list;
	}
}
