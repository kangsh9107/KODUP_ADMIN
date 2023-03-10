package com.kodup.admin.totalboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kodup.admin.member.AdminMemberVo;
import com.kodup.admin.member.MemberPageVo;

@RestController
public class AdminTotalboardController {

	@Autowired
	AdminTotalboardService service;
	
	@RequestMapping("jsp/admin_total_board")
	public ModelAndView select(BoardPageVo pVo) {	
		ModelAndView mv = new ModelAndView();
		List<AdminTotalboardVo> list = service.select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_board");
		return mv;
	}	

/*--------------------------------view---------------------------------------------------*/	
	@RequestMapping("jsp/admin_total_freetalking_board_view")
	public ModelAndView freetalkingview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_freetalking_board_view");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_infoshare_board_view")
	public ModelAndView infoshareview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_infoshare_board_view");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_mansearch_board_view")
	public ModelAndView mansearchview(BoardPageVo pVo, AdminTotalboardVo atVo, AdminTotalboardVo atVo2) {
		ModelAndView mv = new ModelAndView();
		atVo = service.mansearch_view(pVo, atVo);
		atVo2 = service.mansearch_view_info(pVo,atVo);
		List<AdminTotalboardVo> list = service.premium_review(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("atVo2", atVo2);
		mv.addObject("list", list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_mansearch_board_view");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_jobsearch_board_view")
	public ModelAndView jobsearchview(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		atVo = service.view(pVo, atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_jobsearch_board_view");
		return mv;
	}
    
	@RequestMapping("jsp/admin_total_qna_board_view")
	public ModelAndView qnaview(BoardPageVo pVo, AdminTotalboardVo atVo, AdminTotalboardVo atVo2) {
		ModelAndView mv = new ModelAndView();
		atVo = service.qna_view(pVo, atVo);
		atVo2 = service.repl_selected(pVo,atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);

		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("atVo2", atVo2);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_qna_board_view");
		return mv;
	}
	
/*-----------------------admin_???_board_modify------------------*/	
	@RequestMapping("jsp/admin_freetalking_board_modify")
	public ModelAndView admin_freetalking_board_modify(@ModelAttribute BoardPageVo pVo, @ModelAttribute AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.freetalking_board_modify(atVo);
		System.out.println(b);
		
		// alert????????? ?????? ?????? ????????? ?????????
		atVo = service.view(pVo, atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_freetalking_board_view"); 
		return mv;
		
	}
	
	@RequestMapping("jsp/admin_infoshare_board_modify")
	public ModelAndView admin_infoshare_board_modify(@ModelAttribute BoardPageVo pVo, @ModelAttribute AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.infoshare_board_modify(atVo);
		System.out.println(b);
		
		// alert????????? ?????? ?????? ????????? ?????????
		atVo = service.view(pVo, atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_infoshare_board_view"); 
		return mv;
		
	}
	
	@RequestMapping("jsp/admin_jobsearch_board_modify")
	public ModelAndView admin_jobsearch_board_modify(@ModelAttribute BoardPageVo pVo, @ModelAttribute AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.jobsearch_board_modify(atVo);
		System.out.println(b);
		
		// alert????????? ?????? ?????? ????????? ?????????
		atVo = service.view(pVo, atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_jobsearch_board_view"); 
		return mv;
		
	}
	
	@RequestMapping("jsp/admin_mansearch_board_modify")
	public ModelAndView admin_mansearch_board_modify(@ModelAttribute BoardPageVo pVo, @ModelAttribute AdminTotalboardVo atVo, @ModelAttribute AdminTotalboardVo atVo2) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.mansearch_board_modify(atVo);
		System.out.println(b);
		
		// alert????????? ?????? ?????? ????????? ?????????
		atVo = service.mansearch_view(pVo, atVo);
		atVo2 = service.mansearch_view_info(pVo,atVo);
		List<AdminTotalboardVo> list = service.premium_review(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);
		
		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("atVo2", atVo2);
		mv.addObject("list", list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_mansearch_board_view"); 
		return mv;
		
	}
	
	@RequestMapping("jsp/admin_qna_board_modify")
	public ModelAndView admin_qna_board_modify(@ModelAttribute BoardPageVo pVo, @ModelAttribute AdminTotalboardVo atVo, @ModelAttribute AdminTotalboardVo atVo2) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.qna_board_modify(atVo);
		System.out.println(b);
		
		// alert????????? ?????? ?????? ????????? ?????????
		atVo = service.qna_view(pVo, atVo);
		atVo2 = service.repl_selected(pVo,atVo);
		List<AdminTotalboardVo> repl_list = service.repl_list(pVo,atVo);
		String[] hashtag = service.hashtag(pVo);

		mv.addObject("pVo", pVo);
		mv.addObject("atVo", atVo);
		mv.addObject("atVo2", atVo2);
		mv.addObject("repl_list",repl_list);
		mv.addObject("hashtag",hashtag);
		mv.setViewName("jsp/admin_total_qna_board_view"); 
		return mv;
		
	}

/*------------------------------delete&restore---------------------------------------------*/
	@RequestMapping("jsp/admin_total_board_delete")
	public ModelAndView admin_total_board_delete(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.board_delete(atVo);
		
//		if( !b ) {
//			PrintWriter out = resp.getWriter();
//			out.print("<script>alert('fail')</script>");
//		}

		List<AdminTotalboardVo> list = service.select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_board");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_board_restore")
	public ModelAndView admin_total_board_restore(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.board_restore(atVo);
		
//		if( !b ) {
//			PrintWriter out = resp.getWriter();
//			out.print("<script>alert('fail')</script>");
//		}

		List<AdminTotalboardVo> list = service.select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_board");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_board_repl_delete")
	public ModelAndView admin_total_board_repl_delete(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.repl_delete(atVo);
		System.out.println(b);
		List<AdminTotalboardVo> list = service.select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_board");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_board_repl_restore")
	public ModelAndView admin_total_board_repl_restore(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.repl_restore(atVo);
		System.out.println(b);
      	List<AdminTotalboardVo> list = service.select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_board");
		
		return mv;
	}
	
/*----------------------------------------total_repl-----------------------------------------*/	
	@RequestMapping("jsp/admin_total_repl")
	public ModelAndView repl_select(BoardPageVo pVo) {
		ModelAndView mv = new ModelAndView();
		List<AdminTotalboardVo> list = service.repl_select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_repl");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_repl_delete")
	public ModelAndView admin_total_repl_delete(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.repl_delete(atVo);
		
//		if( !b ) {
//			PrintWriter out = resp.getWriter();
//			out.print("<script>alert('fail')</script>");
//		}

		List<AdminTotalboardVo> list = service.repl_select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_repl");
		return mv;
	}
	
	@RequestMapping("jsp/admin_total_repl_restore")
	public ModelAndView admin_total_repl_restore(BoardPageVo pVo, AdminTotalboardVo atVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.repl_restore(atVo);
		
//		if( !b ) {
//			PrintWriter out = resp.getWriter();
//			out.print("<script>alert('fail')</script>");
//		}

		List<AdminTotalboardVo> list = service.repl_select(pVo);
		pVo = service.getpVo();
		
		mv.addObject("pVo", pVo);
		mv.addObject("list", list);
		mv.setViewName("jsp/admin_total_repl");
		return mv;
	}
}
