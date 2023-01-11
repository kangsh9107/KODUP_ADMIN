package com.kodup.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;


@Service
@Transactional
public class AdminMemberService {

	MemberPageVo mpVo;
	
	@Autowired
	AdminMemberMapper AdminMemberMapper;
	
	Object savePoint;
	
	@Autowired
    PlatformTransactionManager manager;
	
	TransactionStatus status;
	
/*-------------admin_member_list--------------*/
	public List<AdminMemberVo> select(MemberPageVo mpVo) {
		int totsize = AdminMemberMapper.totlist(mpVo);
		mpVo.setTotSize(totsize);
		this.mpVo = mpVo;
		List<AdminMemberVo> list = AdminMemberMapper.select(mpVo);
		return list;
	}
	
	public List<AdminMemberVo> view(MemberPageVo mpVo, AdminMemberVo amVo) {
		List<AdminMemberVo> list = AdminMemberMapper.view(mpVo.getId());
		return list;
	}
	
/*-------------------admin_ban.jsp----------------*/
	public List<AdminMemberVo> banselect(MemberPageVo mpVo) {
		int totsize = AdminMemberMapper.totlist(mpVo);
		mpVo.setTotSize(totsize);
		this.mpVo = mpVo;
		List<AdminMemberVo> list = AdminMemberMapper.banselect(mpVo);
		return list;
	}
	
	public boolean make_ban(AdminMemberVo amVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminMemberMapper.make_ban(amVo);
		
		System.out.println(cnt);
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	public boolean make_activity(AdminMemberVo amVo) {
		boolean flag = true;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		savePoint = status.createSavepoint();
		
		int cnt = AdminMemberMapper.make_activity(amVo);
		
		System.out.println(cnt);
		
		if(cnt<1) {
			status.rollbackToSavepoint(savePoint);
			flag = false;
		}else {
			manager.commit(status);
		}
		return flag;
	}
	
	
	public MemberPageVo getmpVo() { return mpVo; }
}
