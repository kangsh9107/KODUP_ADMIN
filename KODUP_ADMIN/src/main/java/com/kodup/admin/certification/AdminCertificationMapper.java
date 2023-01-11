package com.kodup.admin.certification;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminCertificationMapper {

	public int totlist(CertificationPageVo cpVo);
	public List<AdminCertificationVo> corp_select(CertificationPageVo cpVo);
}
