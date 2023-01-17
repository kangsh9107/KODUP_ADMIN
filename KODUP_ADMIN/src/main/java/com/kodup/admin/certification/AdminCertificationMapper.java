package com.kodup.admin.certification;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminCertificationMapper {

	public int totlist(CertificationPageVo cpVo);
	public List<AdminCertificationVo> corp_select(CertificationPageVo cpVo);
	public int corp_approve(AdminCertificationVo acVo);
	
/*----------------------------mento--------------------------------------------------------*/	
	public int mento_totlist(CertificationPageVo cpVo);
	public List<AdminCertificationVo> mento_select(CertificationPageVo cpVo);
	public int change_grade(AdminCertificationVo acVo);
}
