package com.kodup.admin.certification;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminCertificationController {

	@Autowired
	AdminCertificationService service;
	
	@RequestMapping("jsp/admin_corp_certification")
	public ModelAndView corp_select(CertificationPageVo cpVo) {
		ModelAndView mv = new ModelAndView();
		List<AdminCertificationVo> list = service.corp_select(cpVo);
		cpVo = service.getcpVo();
		mv.addObject("cpVo",cpVo);
		mv.addObject("list",list);
		mv.setViewName("jsp/admin_corp_certification");
		return mv;
	}
	
	@RequestMapping("jsp/admin_corp_approve")
	public ModelAndView admin_corp_approve(CertificationPageVo cpVo,AdminCertificationVo acVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.corp_approve(acVo);
		System.out.println(b);
		
		List<AdminCertificationVo> list = service.corp_select(cpVo);
		mv.addObject("cpVo",cpVo);
		mv.addObject("list",list);
		mv.setViewName("jsp/admin_corp_certification");
		return mv;
	}
	
	@RequestMapping("jsp/admin_mento_certification")
	public ModelAndView mento_select(CertificationPageVo cpVo) {
		ModelAndView mv = new ModelAndView();
		List<AdminCertificationVo> list = service.mento_select(cpVo);
		cpVo = service.getcpVo();
		mv.addObject("cpVo",cpVo);
		mv.addObject("list",list);
		mv.setViewName("jsp/admin_mento_certification");
		return mv;
	}
	
	
}
