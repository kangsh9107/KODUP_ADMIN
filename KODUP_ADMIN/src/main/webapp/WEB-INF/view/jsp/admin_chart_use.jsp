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
	border : 1px solid #c8c9ca;
	width : 655px;
	height : 360px;
	margin-left:40px;

}

#admin_chart_use #admin_chart_header{
	position : relative;
	height: 40px;
	border-bottom : 1px solid #c8c9ca;
	
}

#admin_chart_use #admin_chart_header_right{
	position : absolute;
	top : 5px;
	right :5px;
}

#admin_chart_use #admin_chart_main{
	position : absolute;
	
}
#admin_chart_use #curve_chart{
	width: 650px;
	height: 300px;
}
</style>



<body>
	<div style="padding-left:40px;">
	  <h3>이용 통계</h3>
		  <hr><br>
	</div>
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