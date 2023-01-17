package com.kodup.admin.pixel;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminPixelMapper {

	public AdminPixelVo select_pixelrate();
	public int update_rate(AdminPixelVo apVo);
	public int select_totPixel();
	
}
