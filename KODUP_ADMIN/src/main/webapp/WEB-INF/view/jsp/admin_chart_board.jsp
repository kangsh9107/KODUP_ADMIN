<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_board.jsp</title>
<script defer src='/js/admin_chart_board.js'></script>
</head>
<style>
#admin_chart_board{
	border : 1px solid #c8c9ca;
	width : 703px;
	height : 500px;
	margin-left: 40px;
}

#admin_chart_board #admin_chart_header{
	position : relative;
	height: 50px;
	border-bottom : 1px solid #c8c9ca;
}
#admin_chart_board #admin_chart_header_left{
	position : absolute;
	top : 10px;
	left :10px;
	line-height : 30px;
}
#admin_chart_board #admin_chart_header_right{
	position : absolute;
	top : 10px;
	right :10px;
}

#admin_chart_board #admin_chart_main{
	position : absolute;
	
}
#admin_chart_board #curve_chart{
	width: 700px;
	height: 400px;
}
</style>


<body>
    <div style="padding-left:40px;">
	  <h3>게시판 통계</h3>
		  <hr><br>
	</div>

<div id="admin_chart_board" >
	<div id="admin_chart_header">
		<div id="admin_chart_header_left">
			<span>게시판</span>
			<select name='board_select' >
			  <option value='qnaboard'>QnA게시판</option>
			  <option value='freetalking'>자유게시판</option>
			  <option value='infoshare'>정보공유게시판</option>
			  <option value='mansearch'>구인게시판</option>
			  <option value='jobsearch'>구직게시판</option>
			</select>
		</div>
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