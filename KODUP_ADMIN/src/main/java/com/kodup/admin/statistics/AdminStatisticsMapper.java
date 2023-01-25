package com.kodup.admin.statistics;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminStatisticsMapper {
	public int selectMale();
	public int selectFemale();
	public int selectMaleByAge(int age);
	public int selectFemaleByAge(int age);
	public int countGrade(int grade);
	
	public List<AdminStatisticsVo> BoardData(AdminStatisticsVo asVo);
	public List<AdminStatisticsVo> ReplData(AdminStatisticsVo asVo);
	public List<AdminStatisticsVo> sumPixelByDate(AdminStatisticsVo asVo);
	public int countVisitByDate(String nal);
	public int countVisitByDate2(String nal);
	public int countVisitByDate3(String nal);
	public int countVisitByDate4(String nal);
	public int countVisitByDate5(String nal);
	public int countVisitByDate6(String nal);
}
