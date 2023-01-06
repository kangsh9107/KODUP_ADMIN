<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_member.jsp</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src='/js/admin_chart_member.js'></script>
</head>
<style>
#baik_admin_main{
	position : relative;
}

#admin_chart_main1{
	position : absolute;
	top : 5px;
}
#admin_chart_main2{
	position : absolute;
	top: 450px;
}

#admin_chart_main1_section {
	position : relative;
}
#member_piechart_div{
	position : absolute;
	top : 5px;
	left : 5px;
}
#member_columnchart_div{
	position : absolute;
	top :5px;
	left : 400px;
}

#admin_chart_main2_section{
	position : relative;
}

#member_barchart_div{
position : absolute;
	top  : -70px;
	left : 400px;
}
#member_grade_pyo{
position : absolute;
	top  : 5px;
	left : 5px;
}
</style>

<body>
	<div id="admin_chart_main1">
		<h4>회원통계</h4>
		<h6>*성별 유저 현황</h6>
		<div id="admin_chart_main1_section">
			<div id="member_piechart_div">
				<div id="piechart" style="width: 400px; height: 350px;"></div>
			</div>
			<div id="member_columnchart_div">
				<div id="columnchart_material" style="width: 400px; height: 350px;"></div>
			</div>
		</div>
	</div>

	<div id="admin_chart_main2">
		<h6>*회원등급별 유저 현황</h6>
		<div id="admin_chart_main2_section">
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
					<span class="member_grade">등급</span>
					<span class="member_count">회원수</span>
					<span class="member_count_rate">비율</span>
				</div>
			</div>
		</div>
	</div>

</body>
</html>