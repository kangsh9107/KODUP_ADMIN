package com.kodup.admin.pixel;

public class AdminPixelVo {
	double normal,personal,plus,partner;
	int pixel_exchange_status,apply_pixel,pixel_exchange_list_sno;
	int grade;//0:일반,1:퍼스널,2:플러스,3:파트너
	
	String id,apply_date,bank_name,account,account_holder;
	
	//멤버테이블 등급별 총 픽셀
	int totNormalPixel;
	int totPersonalPixel;
	int totPlusPixel;
	int totPartnerPixel;
	
	//픽셀익스체인지리스트테이블 등급별 총 어플라이픽셀
	int totNormalApplyPixel;
	int totPersonalApplyPixel;
	int totPlusApplyPixel;
	int totPartnerApplyPixel;
	
	int budget;//budget = 등급별 환율*apply_pixel

	
	public int getTotNormalApplyPixel() {
		return totNormalApplyPixel;
	}
	public void setTotNormalApplyPixel(int totNormalApplyPixel) {
		this.totNormalApplyPixel = totNormalApplyPixel;
	}
	public int getTotPersonalApplyPixel() {
		return totPersonalApplyPixel;
	}
	public void setTotPersonalApplyPixel(int totPersonalApplyPixel) {
		this.totPersonalApplyPixel = totPersonalApplyPixel;
	}
	public int getTotPlusApplyPixel() {
		return totPlusApplyPixel;
	}
	public void setTotPlusApplyPixel(int totPlusApplyPixel) {
		this.totPlusApplyPixel = totPlusApplyPixel;
	}
	public int getTotPartnerApplyPixel() {
		return totPartnerApplyPixel;
	}
	public void setTotPartnerApplyPixel(int totPartnerApplyPixel) {
		this.totPartnerApplyPixel = totPartnerApplyPixel;
	}
	
	
	
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public int getTotNormalPixel() {
		return totNormalPixel;
	}
	public void setTotNormalPixel(int totNormalPixel) {
		this.totNormalPixel = totNormalPixel;
	}
	public int getTotPersonalPixel() {
		return totPersonalPixel;
	}
	public void setTotPersonalPixel(int totPersonalPixel) {
		this.totPersonalPixel = totPersonalPixel;
	}
	public int getTotPlusPixel() {
		return totPlusPixel;
	}
	public void setTotPlusPixel(int totPlusPixel) {
		this.totPlusPixel = totPlusPixel;
	}
	public int getTotPartnerPixel() {
		return totPartnerPixel;
	}
	public void setTotPartnerPixel(int totPartnerPixel) {
		this.totPartnerPixel = totPartnerPixel;
	}
	public int getPixel_exchange_status() {	return pixel_exchange_status;}
	public void setPixel_exchange_status(int pixel_exchange_status) {this.pixel_exchange_status = pixel_exchange_status;}
	public int getPixel_exchange_list_sno() {return pixel_exchange_list_sno;}
	public void setPixel_exchange_list_sno(int pixel_exchange_list_sno) {this.pixel_exchange_list_sno = pixel_exchange_list_sno;}
	public int getApply_pixel() {return apply_pixel;}
	public void setApply_pixel(int apply_pixel) {this.apply_pixel = apply_pixel;}
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	public String getApply_date() {return apply_date;}
	public void setApply_date(String apply_date) {this.apply_date = apply_date;}
	public double getNormal() {return normal;}
	public void setNormal(double normal) {this.normal = normal;}
	public double getPersonal() {return personal;}
	public void setPersonal(double personal) {this.personal = personal;}
	public double getPlus() {return plus;}
	public void setPlus(double plus) {this.plus = plus;}
	public double getPartner() {return partner;}
	public void setPartner(double partner) {this.partner = partner;}
	public int getGrade() {	return grade;}
	public void setGrade(int grade) {	this.grade = grade;	}
	public String getBank_name() {	return bank_name;}
	public void setBank_name(String bank_name) {	this.bank_name = bank_name;	}
	public String getAccount() {return account;}
	public void setAccount(String account) {this.account = account;}
	public String getAccount_holder() {return account_holder;}
	public void setAccount_holder(String account_holder) {this.account_holder = account_holder;	}
	
}
