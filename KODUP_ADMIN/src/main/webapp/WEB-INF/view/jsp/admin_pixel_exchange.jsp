<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_pixel_exchange.js"></script>
<title>WEB-INF/view/jsp/admin_pixel_exchange.jsp</title>
</head>

<style>
.cho_exchange_list{border: 1px solid #c8c9ca;width: 1300px;padding-top: 20px;}
#exchange>.cho_title{background-color: #2d3644;color:#fff;width : 1250px;}
#exchange span{display : inline-block;text-align: center;}
#exchange .item{margin-top : 5px;border : 1px solid #aaa;width : 1250px;}
#exchange .exchange_no{ width: 50px; }
#exchange .exchange_id{ width: 80px; }
#exchange .exchange_grade{ width: 80px; }
#exchange .exchange_pixel{ width: 150px; }
#exchange .exchange_money{ width: 100px; }
#exchange .exchange_bank_name{ width: 110px; }
#exchange .exchange_account{ width: 170px; }
#exchange .exchange_account_holder{ width: 80px; }
#exchange .exchange_date{ width: 120px; }
#exchange .exchange_status{ width: 100px; }
#exchange .exchange_button{ width: 120px; }
#exchange .null_account{width: 372px;}
#exchange .item:hover{background-color: #ddd;}
#ExchangePageBtn{width : 890px;text-align : center;margin-top : 10px;}
</style>

<body>
<!-- HIDDEN -->
<form class='frm_pixel' style="display:none;" >
	<input type='text' name='nowPage' value='${appVo.nowPage}' size='5'/>
	<input type='text' name='statusFilter'id='statusFilter' value='${appVo.statusFilter}' size='5' />
	<input type='text' name='sortFilter'  id='sortFilter' value='${appVo.sortFilter}' size='5' />
	<input type='text' name='pixel_exchange_list_sno' size='5' value='0'/>
	<input type='text' name='apply_pixel' value='0'/>
	<input type='text' name='id' size='5' value='0'>
	budget<input type='text' name='budget' value='0'>
</form>

<div style="margin-left:40px;">
	<div >
		<h3 style="font-weight: bold;">?????? ??????</h3>
		<br>
	</div>
	<div style=" height:200px; width:1300px;">
		<div>
			<div style="font-size:18px; font-weight:700;">
				<div style="padding-left:10px;">
					??? ?????? ?????? ?????? : <fmt:formatNumber value="${budget}" pattern="#,###"/>???
				</div>
				<!-- ??????????????? ; [(????????????????????????+????????????????????????)*????????? ??????]*0.07 -->
				<div style="padding-left:10px;">
					??? ???????????????(7%) : 
					<div style="display:none;">
					??????  ???????????? : ${apVo.totNormalPixel}, ??????????????????:${totNormalApplyPixel}, ?????? : ${apVo.normal} <br/>
					????????? ???????????? : ${apVo.totPersonalPixel}, ??????????????????:${totPersonalApplyPixel},?????? : ${apVo.personal}<br/>
					????????? ???????????? : ${apVo.totPlusPixel}, ??????????????????:${totPlusApplyPixel}, ?????? : ${apVo.plus}<br/>
					????????? ???????????? : ${apVo.totPartnerPixel}, ??????????????????:${totPartnerApplyPixel}, ?????? : ${apVo.partner}<br/>
					</div>
					<fmt:formatNumber 
					value="${(((apVo.totNormalPixel+apVo.totNormalApplyPixel)*apVo.normal*0.01)
					+((apVo.totPersonalPixel+apVo.totPersonalApplyPixel)*apVo.personal*0.01)
					+((apVo.totPlusPixel+apVo.totPlusApplyPixel)*apVo.plus*0.01)
					+((apVo.totPartnerPixel+apVo.totPartnerApplyPixel)*apVo.partner*0.01))
					*0.07}"
					maxFractionDigits="2"/>
					???
				</div>
				<!-- 
				<div>
				 ?????? ?????? -> ??????????????????${totPixel}+??????????????????${totApplyPixel}
				</div>
				 -->
			</div>
		</div>	
		<div style="margin-top:20px;">
			<div style="float:left; border:1px solid #c8c9ca; min-width: 350px; height:140px; padding-left:10px;">
				<div style="font-size:18px; font-weight:700;">
					???????????? :
					<fmt:formatNumber value="${totApplyPixel}" pattern="#,###"/>px ???
					<fmt:formatNumber value="${(apVo.totNormalApplyPixel*apVo.normal*0.01)
					+(apVo.totPersonalApplyPixel*apVo.personal*0.01)
					+(apVo.totPlusApplyPixel*apVo.plus*0.01)
					+(apVo.totPartnerApplyPixel*apVo.partner*0.01)}" pattern="#,###"/>???
				</div>
				<div style="font-size:15px;">
					??????????????(${apVo.normal}%) : 
					<fmt:formatNumber value="${apVo.totNormalApplyPixel}" pattern="#,###"/>px ???
					<fmt:formatNumber value="${apVo.totNormalApplyPixel * apVo.normal * 0.01}" pattern="#,###"/>???
					<br/>
					?????????????????(${apVo.personal}%) : 
					<fmt:formatNumber value="${apVo.totPersonalApplyPixel}" pattern="#,###"/>px ???
					<fmt:formatNumber value="${apVo.totPersonalApplyPixel * apVo.personal * 0.01}" pattern="#,###"/>???
					<br/>
					?????????????????(${apVo.plus}%) : 
					<fmt:formatNumber value="${apVo.totPlusApplyPixel}" pattern="#,###"/>px ???
					<fmt:formatNumber value="${apVo.totPlusApplyPixel * apVo.plus * 0.01}" pattern="#,###"/>???
					<br/>
					?????????????????(${apVo.partner}%) : 
					<fmt:formatNumber value="${apVo.totPartnerApplyPixel}" pattern="#,###"/>px ???
					<fmt:formatNumber value="${apVo.totPartnerApplyPixel * apVo.partner * 0.01}" pattern="#,###"/>???
					<br/>
				</div>
			</div>	
			<!-- 
			<div style="float:left; margin-left:30px;border:1px solid #c8c9ca; min-width:250px; height:140px; padding-left:10px;">
				<span style="font-size:18px; font-weight:700;">
					???????????? : 
					<fmt:formatNumber value="${totPixel+totApplyPixel}" pattern="#,###"/>px
				</span><br/>
				
				<span style="font-size:15px;">
					??<fmt:formatNumber value="${totPixel}" pattern="#,###"/>px(????????????)<br/>
					??<fmt:formatNumber value="${totApplyPixel}" pattern="#,###"/>px(????????????)
				</span>
			</div>
			 -->
		</div>
		<!-- 
		<span style="font-size:15px;">
			???????????? : ${(apVo.normal + apVo.personal + apVo.plus + apVo.partner)*0.25}%
			(normal : ${apVo.normal}% / personal : ${apVo.personal}% / plus : ${apVo.plus}% / partner:${apVo.partner}%)
		</span>
		 -->
	</div>
	<div class="cho_exchange_list" style="text-align:center; margin-top: 20px;" >
		<div id="exchange_list_filter" style="width:1250px;   display:inline-block; ">
			<div style="float:right; ">
				<span>?????????</span>
				<input type="button" value="???" onclick="applyDateFilter('asc')"  style="font-size:12px; vertical-align: text-top;">
				<input type="button" value="???" onclick="applyDateFilter('desc')" style="font-size:12px; vertical-align: text-top;">
			</div>
			<div style="float:right; ">
				<span>??????</span>
				<select id="filter_status" onchange='statusFilter(this.value)'>
					<option value="0">??????</option>
					<option value="1">????????????</option>
					<option value="2">????????????</option>
				</select>
			</div>
		</div>
		
		
		<div id="exchange" style="display:inline-block; margin: auto;">
			<div class='cho_title'>
				<span class='exchange_no' >NO</span>
				<span class='exchange_id'>ID</span>
				<span class='exchange_grade'>??????</span><!-- grade 0:?????? 1:????????? 2:????????? 3:????????? -->
				<span class='exchange_pixel'>???????????????(??????)</span>
				<span class='exchange_money'>????????????(???)</span>
				<span class='exchange_bank_name'>?????????</span>
				<span class='exchange_account'>??????</span>
				<span class='exchange_account_holder'>????????????</span>
				<span class='exchange_date'>???????????????</span>
				<span class='exchange_status'>????????????</span><!-- 0:???????????? 1:???????????? -->
				<span class='exchange_button'>????????????</span>
			</div>

			<c:forEach var='vo' items='${applyList}' varStatus="status">
				
				<!-- ????????? ?????????????????? HIDDEN -->
				
				<div style="display:none;">
					<c:if test="${vo.grade eq 0 }">
						<input id="rateByGrade${vo.pixel_exchange_list_sno}" type="text" value="${apVo.normal}">
					</c:if>
					<c:if test="${vo.grade eq 1 }">
						<input id="rateByGrade${vo.pixel_exchange_list_sno}" type="text" value="${apVo.personal}">
					</c:if>
					<c:if test="${vo.grade eq 2 }">
						<input id="rateByGrade${vo.pixel_exchange_list_sno}" type="text" value="${apVo.plus}">
					</c:if>
					<c:if test="${vo.grade eq 3 }">
						<input id="rateByGrade${vo.pixel_exchange_list_sno}" type="text" value="${apVo.partner}">
					</c:if>
				</div>
				 
				<div class='item' style="<c:if test="${vo.pixel_exchange_status eq 1}">color:gray;</c:if>">
					<!-- ????????? ?????? -->
					<span class='exchange_no'>${status.count +appVo.startNo}</span>

					<!-- ????????? -->
					<span class='exchange_id'>${vo.id}</span>

					<!-- ?????? ; grade 0:?????? 1:????????? 2:????????? 3:????????? -->
					<span class='exchange_grade exchange_grade${vo.pixel_exchange_list_sno}'>
						<c:if test="${vo.grade eq 0 }">
							normal
						</c:if>
						<c:if test="${vo.grade eq 1 }">
							personal
						</c:if>
						<c:if test="${vo.grade eq 2 }">
							plus
						</c:if>
						<c:if test="${vo.grade eq 3 }">
							partner
						</c:if>
					</span>
					<!-- ???????????? -->
					<span class='exchange_pixel exchange_pixel${vo.pixel_exchange_list_sno}'>
						<fmt:formatNumber value="${vo.apply_pixel}" pattern="#,###"/>px
					</span>

					<!-- ???????????? ; ????????? ?????? ????????? -->
					<span class='exchange_money exchange_money${vo.pixel_exchange_list_sno}'>
						<c:if test="${vo.grade eq 0 }">
							<fmt:formatNumber value="${vo.apply_pixel * apVo.normal * 0.01}" pattern="#,###"/>???
						</c:if>
						<c:if test="${vo.grade eq 1 }">
							<fmt:formatNumber value="${vo.apply_pixel * apVo.personal * 0.01}" pattern="#,###"/>???
						</c:if>
						<c:if test="${vo.grade eq 2 }">
							<fmt:formatNumber value="${vo.apply_pixel * apVo.plus * 0.01}" pattern="#,###"/>???
						</c:if>
						<c:if test="${vo.grade eq 3 }">
							<fmt:formatNumber value="${vo.apply_pixel * apVo.partner * 0.01}" pattern="#,###"/>???
						</c:if>
					</span>
					
					<!-- ????????????(?????????,??????,????????????) -->
					<c:if test="${(vo.bank_name ne null) and (vo.account ne null) and (vo.account_holder ne null)}">
						<input type="text" id="checkBank" value="0" style="display:none;">
						<span class='exchange_bank_name'>${vo.bank_name}</span>
						<span class='exchange_account'>${vo.account}</span>
						<span class='exchange_account_holder'>${vo.account_holder}</span>
					</c:if>
					<c:if test="${(vo.bank_name eq null) or (vo.account eq null) or (vo.account_holder eq null)}">
						<input type="text" id="checkBank" value="1" style="display:none;">
						<span class='null_account'>??????????????? ???????????? ?????? ???????????????.</span>
					</c:if>

					<!-- ??????????????? -->
					<span class='exchange_date'>
					
						<fmt:parseDate value="${vo.apply_date}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
					</span>

					<!-- ??????status-->
					<c:if test="${vo.pixel_exchange_status eq 0}">
						<span class='exchange_status'>????????????</span>
					</c:if>
					<c:if test="${vo.pixel_exchange_status eq 1}">
						<span class='exchange_status'>????????????</span>
					</c:if>
					
					<!-- ???????????? -->
					<span class='exchange_button'>
						<button type="button" onclick="btnApprove(${vo.pixel_exchange_list_sno},'${vo.id}',${vo.apply_pixel})"
							<c:if test="${vo.pixel_exchange_status eq 1}">disabled</c:if> >
							????????????
						</button>
					</span>
				</div>
			</c:forEach>
		</div>

		<!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center; margin-top:20px;" role="toolbar" aria-label="Toolbar with button groups">
			<c:if test="${appVo.startPage > 1 }">
				<div class="btn-group me-2" role="group" aria-label="First group">
					<button type="button" class="btn btn-outline-light btn-sm" onclick= 'movePage(${appVo.startPage - 1})' 
					style="background-color: #2d3644;">??????</button>
				</div>
			</c:if>
			<c:forEach var='i' begin='${appVo.startPage }' end='${appVo.endPage }'>
				<div class="btn-group me-2" role="group" aria-label="Second group">
					<button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${i})'
					style="background-color: #2d3644;">${i}</button>
				</div>
			</c:forEach>
			<c:if test="${appVo.endPage < appVo.totPage }">
				<div class="btn-group" role="group" aria-label="Third group">
					<button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${appVo.endPage + 1})'
					style="background-color: #2d3644;">??????</button>
				</div>
		   </c:if>
		</div>
	</div>
</div>	
</body>
</html>