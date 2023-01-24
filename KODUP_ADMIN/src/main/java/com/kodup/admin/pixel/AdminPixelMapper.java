package com.kodup.admin.pixel;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminPixelMapper {

	public AdminPixelVo select_pixelrate();
	public int totList();
	public List<AdminPixelVo> select_applylist(AdminPixelPageVo appVo);
	public List<AdminPixelVo> select_applylist_filter_status1(AdminPixelPageVo appVo);
	public List<AdminPixelVo> select_applylist_filter_status2(AdminPixelPageVo appVo);
	public int update_rate(AdminPixelVo apVo);
	public int select_totPixel();
	public int select_totApplyPixel();
	public int select_budget();
	public int pixel_approve(AdminPixelVo apVo);
	public int pixel_approve_history(AdminPixelVo apVo);
	public int select_totPixelByGrade(int grade);
	public int select_totApplyPixelByGrade(int grade);
	public int budget_minus(AdminPixelVo apVo);
	
}
