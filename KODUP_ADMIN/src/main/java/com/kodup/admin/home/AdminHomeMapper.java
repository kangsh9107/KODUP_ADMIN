package com.kodup.admin.home;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminHomeMapper {

	public int mento_request(AdminHomeVo ahVo);
    public int pixel_request(AdminHomeVo ahVo);
    public int corp_request(AdminHomeVo ahVo);
    
	public String pixel_id(AdminHomeVo ahVo);
	public String mento_id(AdminHomeVo ahVo);
	public String corp_id(AdminHomeVo ahVo);
}
