<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_use.jsp</title>
<script src='/js/admin_chart_use.js'></script>
</head>

<style>

#admin_chart_use{
	border : 1px solid rgba(33, 37, 41);
	width : 655px;
	height : 360px;

}

#admin_chart_use #admin_chart_header{
	position : relative;
	height: 40px;
	border-bottom : 1px solid #2D3644;
	
}

#admin_chart_use #admin_chart_header_right{
	position : absolute;
	top : 5px;
	right :5px;
}

#admin_chart_use #admin_chart_main{
	position : absolute;
	top : 160px;
}
#admin_chart_use #curve_chart{
	width: 650px;
	height: 300px;
}
</style>



<body>
<h4>이용통계</h4>
<div id="admin_chart_use">
	<div id="admin_chart_header">
	
		
		<div id="admin_chart_header_right">
			<span>조회일자</span>
			<input type='date' value="2023-01-06"> <!-- 디폴트로 오늘날짜찍히도록 -->
			<input type='button' value="조회">
		</div>
	</div>
	<div id="admin_chart_main">
		<div id="curve_chart" ></div>
	</div>
</div>    
</body>
</html>