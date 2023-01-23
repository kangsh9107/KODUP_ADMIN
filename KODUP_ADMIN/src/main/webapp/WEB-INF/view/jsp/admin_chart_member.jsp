<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_member.jsp</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src='/js/admin_chart_member.js'></script>
</head>
<style>
#baik_admin_main{position : relative;}
#admin_chart{padding-left:55px;}
#admin_chart #admin_chart_main1{position : absolute;top : 5px;margin-top:80px;}
#admin_chart #admin_chart_main2{position : absolute;top: 520px;	padding-left:10px;}
#admin_chart #member_piechart_div{position : absolute;top : 0px;left : -10px;}
#admin_chart #member_columnchart_div{position : absolute;top :32px;	left : 430px;}
#admin_chart #member_barchart_div{position : absolute;top  : -9px;left : 400px;}
#admin_chart #member_grade_pyo{position : absolute;top  : 25px;left : 5px;}
#admin_chart #member_grade_pyo_title{background: #2D3644;color:#fff;padding:2px;width : 320px;}
#admin_chart_main2 span{display : inline-block;text-align: center;}
#admin_chart_main2 .member_grade_pyo_item{margin-top : 13px;vertical-align : center;border : 1px solid #aaa;width : 320px;}
#admin_chart_main2 .member_grade{ width: 100px; }
#admin_chart_main2 .member_count{ width: 100px; }
#admin_chart_main2 .member_count_rate{ width: 100px; }
</style>

<body>
	<div style="display:none;">
		<input id="countMale" type="text" value="${asVo.male}">
		<input id="countFemale" type="text" value="${asVo.female}">
		<input id="f10dae" type="text" value="${asVo.f10dae}">
		<input id="f20dae" type="text" value="${asVo.f20dae}">
		<input id="f30dae" type="text" value="${asVo.f30dae}">
		<input id="f40dae" type="text" value="${asVo.f40dae}">
		<input id="f50dae" type="text" value="${asVo.f50dae}">
		<input id="f60dae" type="text" value="${asVo.f60dae}">
		<input id="m10dae" type="text" value="${asVo.m10dae}">
		<input id="m20dae" type="text" value="${asVo.m20dae}">
		<input id="m30dae" type="text" value="${asVo.m30dae}">
		<input id="m40dae" type="text" value="${asVo.m40dae}">
		<input id="m50dae" type="text" value="${asVo.m50dae}">
		<input id="m60dae" type="text" value="${asVo.m60dae}">
		<input id="countNormal"   type="text" value="${asVo.countNormal}">
		<input id="countPersonal" type="text" value="${asVo.countPersonal}">
		<input id="countPlus"     type="text" value="${asVo.countPlus}">
		<input id="countPartner"  type="text" value="${asVo.countPartner}">
	</div>
	
	<div style="margin-left:40px;">
		<h3 style="font-weight: bold;">회원 통계</h3>
		<hr>
	</div>
	
	<div id="admin_chart" >
		<div id="admin_chart_main1" >
			<h5 style="font-weight:1000;">성별 유저 현황</h5>
			<div id="admin_chart_main1_section" style="position : relative;">
				<div id="member_piechart_div">
					<div id="piechart" style="width: 400px; height: 370px;"></div>
				</div>
				<div id="member_columnchart_div">
					<div id="columnchart_material" style="width: 400px; height: 350px;"></div>
				</div>
			</div>
		</div>
		
		<div id="admin_chart_main2" >
			<h5 style="font-weight:1000;">회원등급별 유저 현황 (전체 : ${asVo.male+asVo.female}명)</h5>
			<div id="admin_chart_main2_section" style="position : relative;">
				<div id="member_barchart_div">
					<div id="barchart_values" style="width: 400px; height: 250px;"></div>
				</div>
				<div id="member_grade_pyo">
					<div id="member_grade_pyo_title">
						<span class="member_grade">등급</span>
						<span class="member_count">회원수</span>
						<span class="member_count_rate">비율</span>
					</div>
					<div class="member_grade_pyo_item">
						<span class="member_grade">일반회원</span>
						<span class="member_count">${asVo.countNormal} 명</span>
						<span class="member_count_rate">
							<fmt:formatNumber value="${asVo.countNormal/(asVo.male+asVo.female)*100}" pattern="##.##"/>%
						</span>
					</div>
					<div class="member_grade_pyo_item">
						<span class="member_grade">퍼스널멘토</span>
						<span class="member_count">${asVo.countPersonal} 명</span>
						<span class="member_count_rate">
							<fmt:formatNumber value="${asVo.countPersonal/(asVo.male+asVo.female)*100}" pattern="##.##"/>%
						</span>
					</div>
					<div class="member_grade_pyo_item">
						<span class="member_grade">플러스멘토</span>
						<span class="member_count">${asVo.countPlus} 명</span>
						<span class="member_count_rate">
							<fmt:formatNumber value="${asVo.countPlus/(asVo.male+asVo.female)*100}" pattern="##.##"/>%
						</span>
					</div>
					<div class="member_grade_pyo_item">
						<span class="member_grade">파트너멘토</span>
						<span class="member_count">${asVo.countPartner} 명</span>
						<span class="member_count_rate">
							<fmt:formatNumber value="${asVo.countPartner/(asVo.male+asVo.female)*100}" pattern="##.##"/>%
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</body>
</html>