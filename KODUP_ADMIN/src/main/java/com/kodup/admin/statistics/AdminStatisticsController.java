package com.kodup.admin.statistics;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;



@RestController
public class AdminStatisticsController {
	
	@RequestMapping("jsp/admin_chart_board")
	public ModelAndView select_chart_board() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_chart_board");  /* WEB-INF/view/jsp/chart_board.jsp */
		return mv;
	}
	
	
	@RequestMapping("jsp/admin_chart_member")
	public ModelAndView select_chart_member() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_chart_member");  
		return mv;
	}
	
	@RequestMapping("jsp/admin_chart_pixel")
	public ModelAndView select_chart_pixel() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_chart_pixel");  
		return mv;
	}
	
	@RequestMapping("jsp/admin_exchange_rate")
	public ModelAndView select_exchange_rate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_pixel_exchange_rate");  
		return mv;
	}
	
	
	@RequestMapping("jsp/admin_exchange")
	public ModelAndView select_cexchange() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_pixel_exchange");  
		return mv;
	}
	
	
}
