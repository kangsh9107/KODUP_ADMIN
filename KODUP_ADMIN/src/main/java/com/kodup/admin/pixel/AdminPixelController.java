package com.kodup.admin.pixel;

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
		
		apVo=service.select_pixelrate();
		mv.addObject("apVo",apVo);
		mv.setViewName("jsp/admin_pixel_exchange_rate");  
		return mv;
	}
	
	
	@RequestMapping("jsp/admin_exchange")
	public ModelAndView select_cexchange(AdminPixelVo apVo) {
		ModelAndView mv = new ModelAndView();
		
		int totpixel= service.select_totPixel();
		
		mv.addObject("totpixel",totpixel);
		mv.setViewName("jsp/admin_pixel_exchange");  
		return mv;
	}
	
	@RequestMapping("jsp/update_rate")
	public ModelAndView update_rate(AdminPixelVo apVo) {
		String msg="";
		ModelAndView mv = new ModelAndView();
		
		boolean b =service.update_rate(apVo);
		if(!b) {
			msg="수정 중 오류 발생";
		}
		apVo=service.select_pixelrate();
		mv.addObject("msg",msg);//추후고도화시 msg알러트 사용
		mv.addObject("apVo",apVo);
		mv.setViewName("jsp/admin_pixel_exchange_rate");  
		return mv;
	}
	
	
	
}
