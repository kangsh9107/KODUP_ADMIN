package com.kodup.admin.totalboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.kodup.admin.member.AdminMemberVo;

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
	
/*---------------modify-----------------------------------------------------------------*/
	public boolean freetalking_board_modify(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.freetalking_board_modify(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	public boolean infoshare_board_modify(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.infoshare_board_modify(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	public boolean jobsearch_board_modify(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.jobsearch_board_modify(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	public boolean mansearch_board_modify(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.mansearch_board_modify(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}

	public boolean qna_board_modify(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.qna_board_modify(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	
/*---------------------------------delete-----------------------------------*/	
	public boolean board_delete(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.board_delete(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	public BoardPageVo getpVo() { return pVo; }
}
