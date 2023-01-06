<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_board.jsp</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script defer src='/js/admin_chart_board.js'></script>
</head>
<style>
#admin_chart_board{
	border : 1px solid rgba(33, 37, 41);
	width : 703px;
	height : 500px;
}

#admin_chart_header{
	position : relative;
	height: 50px;
	border-bottom : 1px solid #2D3644;
	verticla-align : center;
}
#admin_chart_header_left{
	position : absolute;
	top : 10px;
	left :10px;
}
#admin_chart_header_right{
	position : absolute;
	top : 10px;
	right :10px;
}

#admin_chart_main{
	position : absolute;
	top : 150px;
}
#curve_chart{
	width: 700px;
	height: 400px;
}
</style>


<body>
<h4>게시판통계</h4>
<div id="admin_chart_board">
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
		</div>
	</div>
	<div id="admin_chart_main">
		<div id="curve_chart" ></div>
	</div>
</div>    

</body>
</html>