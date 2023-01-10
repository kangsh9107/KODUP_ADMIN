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

    BoardPageVo pVo;
	
	@Autowired
	AdminTotalboardMapper AdminTotalboardMapper;
	
	Object savePoint;
	
	@Autowired
	PlatformTransactionManager manager;
	
	TransactionStatus status;
	
	public List<AdminTotalboardVo> select(BoardPageVo pVo) {
		int totSize = AdminTotalboardMapper.totList(pVo);
		pVo.setTotSize(totSize);
		this.pVo = pVo;
		List<AdminTotalboardVo> list = AdminTotalboardMapper.select(pVo);
		return list;
	}
	
	public AdminTotalboardVo view(BoardPageVo pVo, AdminTotalboardVo atVo) {
		atVo = AdminTotalboardMapper.view(pVo.getSno(), pVo.getBoardtype());
    //  atVo.setAttList(AdminTotalboardMapper.attList(pVo.getSno()));
//		List<AttVo> attList = boardMapper.attList(pVo.getSno());
//		bVo.setAttList(attList);
		
		return atVo;
	}
	
	
	
	
	
	public BoardPageVo getpVo() { return pVo; }
}
