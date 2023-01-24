package com.kodup.admin.statistics;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class AdminStatisticsService {
	
	@Autowired
	AdminStatisticsMapper mapper;
	
	public AdminStatisticsVo selectMember(AdminStatisticsVo asVo) {
	
		asVo.setMale(mapper.selectMale());
		asVo.setFemale(mapper.selectFemale());
		asVo.setF10dae(mapper.selectFemaleByAge(20050101));
		asVo.setF20dae(mapper.selectFemaleByAge(19950101));
		asVo.setF30dae(mapper.selectFemaleByAge(19850101));
		asVo.setF40dae(mapper.selectFemaleByAge(19750101));
		asVo.setF50dae(mapper.selectFemaleByAge(19650101));
		asVo.setF60dae(mapper.selectFemaleByAge(19550101));
		asVo.setM10dae(mapper.selectMaleByAge(20050101));
		asVo.setM20dae(mapper.selectMaleByAge(19950101));
		asVo.setM30dae(mapper.selectMaleByAge(19850101));
		asVo.setM40dae(mapper.selectMaleByAge(19750101));
		asVo.setM50dae(mapper.selectMaleByAge(19650101));
		asVo.setM60dae(mapper.selectMaleByAge(19550101));
		asVo.setCountNormal(mapper.countGrade(0));
		asVo.setCountPersonal(mapper.countGrade(1));
		asVo.setCountPlus(mapper.countGrade(2));
		asVo.setCountPartner(mapper.countGrade(3));
		return asVo; 
		
	}
	
	public List<AdminStatisticsVo> showChartBoard(AdminStatisticsVo asVo) {
		List<AdminStatisticsVo> BoardDataList = mapper.BoardData(asVo);
		return BoardDataList;
	}
	public List<AdminStatisticsVo> showChartBoard_repl(AdminStatisticsVo asVo) {
		List<AdminStatisticsVo> ReplDataList = mapper.ReplData(asVo);
		return ReplDataList;
	}
	
	public List<AdminStatisticsVo> sumPixelByDate(AdminStatisticsVo asVo) {
		List<AdminStatisticsVo> PixelDataList = mapper.sumPixelByDate(asVo);
		return PixelDataList;
	}
	
}
