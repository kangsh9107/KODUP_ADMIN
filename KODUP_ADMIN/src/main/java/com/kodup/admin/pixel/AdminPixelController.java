package com.kodup.admin.pixel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminPixelController {
	
	@Autowired
	AdminPixelService service;
	
	@RequestMapping("jsp/admin_exchange_rate")
	public ModelAndView select_exchange_rate(AdminPixelVo apVo) {
		ModelAndView mv = new ModelAndView();
		apVo=service.select_pixelrate(apVo);
		mv.addObject("apVo",apVo);
		mv.setViewName("jsp/admin_pixel_exchange_rate");  
		return mv;
	}
	
	@RequestMapping("jsp/update_rate")
	public String update_rate(AdminPixelVo apVo) {
		String msg="수정 완료";
		boolean b =service.update_rate(apVo);
		if(!b) {
			msg="수정 중 오류 발생";
		}
		
		return msg;
	}
	@RequestMapping("jsp/admin_exchange")
	public ModelAndView select_exchangelist(AdminPixelVo apVo, AdminPixelPageVo appVo) {
		ModelAndView mv = new ModelAndView();
		//코덥예산
		int budget = service.select_budget();
		//지급준비금
		int totPixel= service.select_totPixel();
		int totApplyPixel = service.select_totApplyPixel();
		
		//환전신청 리스트
		List<AdminPixelVo>applyList = service.select_applylist(appVo);
		apVo=service.select_exchangeData(apVo);
		appVo = service.getappVo();
		
		mv.addObject("budget",budget);
		mv.addObject("totPixel",totPixel);
		mv.addObject("totApplyPixel",totApplyPixel);
		mv.addObject("applyList",applyList);
		mv.addObject("apVo",apVo);
		mv.addObject("appVo",appVo);
		mv.setViewName("jsp/admin_pixel_exchange");
		return mv;
	}
	
	
	
	@RequestMapping("jsp/pixel_approve")
	public String pixel_approve(AdminPixelVo apVo, AdminPixelPageVo appVo) {
		String msg="승인완료";
		
		boolean b =service.pixel_approve(apVo);
		if(!b) {
			msg="승인 중 오류 발생";
		}else if(b){
			b = service.pixel_approve_history(apVo);
			if(!b) {
				msg="승인 히스토리 작업 중 오류 발생";
			}else if(b) {
				b = service.pixel_approve_budget_minus(apVo);
				if(!b) {
					msg="코덥예산 빼는 중 오류 발생";
				}
			}
		}
		
		return msg;
	}
	
	
}
