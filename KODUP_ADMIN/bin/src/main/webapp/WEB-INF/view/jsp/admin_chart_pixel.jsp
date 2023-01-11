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
	border : 1px solid #c8c9ca;
	width : 703px;
	height : 500px;
	margin-left:40px;
	
}

#admin_chart_pixel #admin_chart_header{
	position : relative;
	height: 40px;
	border-bottom : 1px solid #c8c9ca;
}
#admin_chart_pixel #admin_chart_header_left{
	position : absolute;

}
#admin_chart_pixel #admin_chart_header_right{
	position : absolute;
	margin-left: 300px;
    margin-top: 5px;	
    
}

#admin_chart_pixel #admin_chart_main{
	position : absolute;
	
}
#admin_chart_pixel #curve_chart{
	width: 700px;
	height: 400px;
}
</style>

<body>
	<div style="padding-left:40px;">
	  <h3 style="font-weight: bold;">픽셀 통계</h3>
		  <hr><br>
	</div>
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