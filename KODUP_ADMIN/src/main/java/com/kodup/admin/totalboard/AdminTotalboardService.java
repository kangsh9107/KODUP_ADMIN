package com.kodup.admin.totalboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;


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
		String boardType = pVo.getBoardtype();
		String startDay = pVo.getStart_day();
		String endDay = pVo.getEnd_day();
		if(boardType==null) {
		  boardType = "";  
		  System.out.println(boardType);
		}
		if(startDay==null) {
			  startDay = "";  
			  System.out.println(startDay);
			}
		if(endDay==null) {
			  endDay = "";  
			  System.out.println(endDay);
			}
		int totSize = AdminTotalboardMapper.totList(pVo);
		pVo.setTotSize(totSize);
	
		this.pVo = pVo;
		List<AdminTotalboardVo> list = AdminTotalboardMapper.select(pVo);
		return list;
	}

/*-------------------------------------view----------------------------------------------------*/	
	public AdminTotalboardVo view(BoardPageVo pVo, AdminTotalboardVo atVo) {
		atVo = AdminTotalboardMapper.view(pVo.getSno(), pVo.getBoardtype());
		return atVo;
	}
	
	public AdminTotalboardVo mansearch_view(BoardPageVo pVo, AdminTotalboardVo atVo) {
		atVo = AdminTotalboardMapper.mansearch_view(pVo.getSno(), pVo.getBoardtype());
		return atVo;
	}
	
	public AdminTotalboardVo mansearch_view_info(BoardPageVo pVo, AdminTotalboardVo atVo) {
		atVo = AdminTotalboardMapper.mansearch_view_info(pVo.getSno(), pVo.getBoardtype());
		return atVo;
	}
	
	public List<AdminTotalboardVo> premium_review(BoardPageVo pVo, AdminTotalboardVo atVo){
		List<AdminTotalboardVo> list = AdminTotalboardMapper.premium_review(pVo.getSno());
		return list;
	}
	
	public AdminTotalboardVo qna_view(BoardPageVo pVo, AdminTotalboardVo atVo) {
		atVo = AdminTotalboardMapper.qna_view(pVo.getSno(), pVo.getBoardtype());
		return atVo;
	}
	
	public List<AdminTotalboardVo> repl_list(BoardPageVo pVo, AdminTotalboardVo atVo) {
		List<AdminTotalboardVo> list = AdminTotalboardMapper.repl_list(pVo.getSno());
		return list;
		
	}
	
	public AdminTotalboardVo repl_selected(BoardPageVo pVo, AdminTotalboardVo atVo) {
		atVo = AdminTotalboardMapper.repl_selected(pVo.getSno());
		
		return atVo;
	}
	
	public String[] hashtag(BoardPageVo pVo) {
		String hashtag = AdminTotalboardMapper.hashtag(pVo.getSno());
		System.out.println(hashtag);
		String[] array = hashtag.split("#");
		for(int i=0; i<array.length; i++) {
			System.out.println(array[i]);
		}
		return array;		
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
	
	public boolean board_restore(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.board_restore(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
/*----------------------------total_repl------------------------------------------------------*/	
	public List<AdminTotalboardVo> repl_select(BoardPageVo pVo) {
		int totSize = AdminTotalboardMapper.repl_totList(pVo);
		pVo.setTotSize(totSize);
		this.pVo = pVo;
		List<AdminTotalboardVo> list = AdminTotalboardMapper.repl_select(pVo);
		return list;
	}
	
	public boolean repl_delete(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.repl_delete(atVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	public boolean repl_restore(AdminTotalboardVo atVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminTotalboardMapper.repl_restore(atVo);
		
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
