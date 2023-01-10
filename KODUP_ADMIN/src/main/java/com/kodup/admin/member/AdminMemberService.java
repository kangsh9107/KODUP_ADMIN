package com.kodup.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;


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
	
	public List<AdminMemberVo> select(MemberPageVo mpVo) {
		int totsize = AdminMemberMapper.totlist(mpVo);
		mpVo.setTotSize(totsize);
		this.mpVo = mpVo;
		List<AdminMemberVo> list = AdminMemberMapper.select(mpVo);
		return list;
	}
	
	
	
	public MemberPageVo getmpVo() { return mpVo; }
}
