package com.kodup.admin.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminMemberMapper {

	public int totlist(MemberPageVo mpVo);
	public List<AdminMemberVo> select(MemberPageVo mpVo);
	public int grade_totlist(MemberPageVo mpVo);
	public List<AdminMemberVo> select_grade(MemberPageVo mpVo);
	
	public AdminMemberVo view(String id);
	public List<AdminMemberVo> doc_list5(AdminMemberVo amVo);
	public List<AdminMemberVo> repl_list5(AdminMemberVo amVo);
	public int member_modify(AdminMemberVo amVo);
	public int member_delete(AdminMemberVo amVo);
		
	public List<AdminMemberVo> banselect(MemberPageVo mpVo);
	public int make_ban(AdminMemberVo amVo);
	public int ban_number(AdminMemberVo amVo);
	public int ban_history(AdminMemberVo amVo);
	
	public int make_activity(AdminMemberVo amVo);
}
