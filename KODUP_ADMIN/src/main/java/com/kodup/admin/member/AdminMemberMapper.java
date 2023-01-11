package com.kodup.admin.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminMemberMapper {

	public int totlist(MemberPageVo mpVo);
	public List<AdminMemberVo> select(MemberPageVo mpVo);
	
	public AdminMemberVo view(String id);
	
	public List<AdminMemberVo> banselect(MemberPageVo mpVo);
}
