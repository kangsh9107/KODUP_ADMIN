<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_pixel.jsp</title>
<script src='/js/admin_chart_pixel.js'></script>
</head>
<style>
#admin_chart_pixel{
	border : 1px solid rgba(33, 37, 41);
	width : 703px;
	height : 500px;
}

#admin_chart_pixel #admin_chart_header{
	position : relative;
	height: 50px;
	border-bottom : 1px solid #2D3644;
}
#admin_chart_pixel #admin_chart_header_left{
	position : absolute;
	top : 10px;
	left :10px;
}
#admin_chart_pixel #admin_chart_header_right{
	position : absolute;
	top : 10px;
	right :10px;
}

#admin_chart_pixel #admin_chart_main{
	position : absolute;
	top : 160px;
}
#admin_chart_pixel #curve_chart{
	width: 700px;
	height: 400px;
}
</style>

<body>
<h4>픽셀통계</h4>
<div id="admin_chart_pixel">
	<div id="admin_chart_header">
		<div id="admin_chart_header_right">
			<span>기간</span>
			<input type='date'> ~ <input type='date'>
			<input type='button' value="조회">
		</div>
	</div>
	<div id="admin_chart_main">
		<div id="curve_chart" ></div>
	</div>
</div>    

</body>
</html>