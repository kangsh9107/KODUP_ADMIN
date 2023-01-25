package com.kodup.admin.statistics;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;



@RestController
public class AdminStatisticsController {
	
	@Autowired
	AdminStatisticsService service;
	
	@RequestMapping("jsp/admin_chart_board")
	public ModelAndView select_chart_board(AdminStatisticsVo asVo) {
		ModelAndView mv = new ModelAndView();
		
		asVo.setBoardtype("qna");
		asVo.setStartNal("2022-01-25");
		asVo.setEndNal("2022-02-10");
		List<AdminStatisticsVo> BoardDataList = service.showChartBoard(asVo);
		List<AdminStatisticsVo> ReplDataList = service.showChartBoard_repl(asVo);
		mv.addObject("asVo",asVo);
		mv.addObject("BoardDataList",BoardDataList);
		mv.addObject("ReplDataList",ReplDataList);
		mv.setViewName("jsp/admin_chart_board");  
		return mv;
	}
	
	@RequestMapping("jsp/admin_chart_board_sort")
	public ModelAndView select_chart_board_sort(AdminStatisticsVo asVo) {
		ModelAndView mv = new ModelAndView();
		
		List<AdminStatisticsVo> BoardDataList = service.showChartBoard(asVo);
		List<AdminStatisticsVo> ReplDataList = service.showChartBoard_repl(asVo);
		mv.addObject("asVo",asVo);
		mv.addObject("BoardDataList",BoardDataList);
		mv.addObject("ReplDataList",ReplDataList);
		mv.setViewName("jsp/admin_chart_board"); 
		return mv;
	}
	
	@RequestMapping("jsp/admin_chart_member")
	public ModelAndView select_chart_member(AdminStatisticsVo asVo) {
		ModelAndView mv = new ModelAndView();
		asVo = service.selectMember(asVo);
		mv.addObject("asVo",asVo);
		mv.setViewName("jsp/admin_chart_member");  
		return mv;
	}
	
	@RequestMapping("jsp/admin_chart_pixel")
	public ModelAndView select_chart_pixel(AdminStatisticsVo asVo) {
		ModelAndView mv = new ModelAndView();
		
		asVo.setStartNal("2022-01-25");
		asVo.setEndNal("2022-02-10");
		List<AdminStatisticsVo> PixelDataList = service.sumPixelByDate(asVo);
		mv.addObject("asVo",asVo);
		mv.addObject("PixelDataList",PixelDataList);
		mv.setViewName("jsp/admin_chart_pixel");  
		return mv;
	}
	@RequestMapping("jsp/admin_chart_pixel_sort")
	public ModelAndView select_chart_pixel_sort(AdminStatisticsVo asVo) {
		ModelAndView mv = new ModelAndView();
		
		List<AdminStatisticsVo> PixelDataList = service.sumPixelByDate(asVo);
		mv.addObject("asVo",asVo);
		mv.addObject("PixelDataList",PixelDataList);
		mv.setViewName("jsp/admin_chart_pixel");  
		return mv;
	}
	
	@RequestMapping("jsp/admin_chart_use")
	public ModelAndView select_chart_use(AdminStatisticsVo asVo) {
		ModelAndView mv = new ModelAndView();
		
		asVo.setNal("2023-01-25");
		asVo = service.countVisitByDate(asVo);
		mv.addObject("asVo",asVo);
		mv.setViewName("jsp/admin_chart_use");  
		return mv;
	}
	
	@RequestMapping("jsp/admin_chart_use_sort")
	public ModelAndView select_chart_use_sort(AdminStatisticsVo asVo) {
		ModelAndView mv = new ModelAndView();
		
		asVo = service.countVisitByDate(asVo);
		mv.addObject("asVo",asVo);
		mv.setViewName("jsp/admin_chart_use");  
		return mv;
	}

	
	
}
