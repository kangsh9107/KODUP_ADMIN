package com.kodup.admin.totalboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminTotalboardController {

	@Autowired
	AdminTotalboardService service;
	
	@RequestMapping("jsp/admin_total_board")
	public ModelAndView select(BoardPageVo pVo) {	
		ModelAndView mv = new ModelAndView();
		List<AdminTotalboardVo> list = service.select(pVo);
		pVo = service.getpVo();
		System.out.println(pVo.getNowPage());
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_board");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_qna_board_view")
	public ModelAndView qnaview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.setViewName("jsp/admin_total_qna_board_view");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_freetalking_board_view")
	public ModelAndView freetalkingview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.setViewName("jsp/admin_total_freetalking_board_view");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_infoshare_board_view")
	public ModelAndView infoshareview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.setViewName("jsp/admin_total_infoshare_board_view");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_mansearch_board_view")
	public ModelAndView mansearchview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.setViewName("jsp/admin_total_mansearch_board_view");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_jobsearch_board_view")
	public ModelAndView jobsearchview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.setViewName("jsp/admin_total_jobsearch_board_view");
		return mv;
	}

	
}
