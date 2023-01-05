package com.kodup.admin.statistics;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;



@RestController
public class AdminStatisticsController {
	
	@RequestMapping("jsp/admin_chart_board")
	public ModelAndView select() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_chart_board");  /* WEB-INF/view/jsp/chart_board.jsp */
		return mv;
	}
	
	/*
	@RequestMapping("jsp/admin_chart_board")
	public ModelAndView select() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_chart_board");  
		return mv;
	}
	
	@RequestMapping("jsp/admin_chart_board")
	public ModelAndView select() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_chart_board");  
		return mv;
	}
	*/
}
