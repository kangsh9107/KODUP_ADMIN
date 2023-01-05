<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_board.jsp</title>
<script defer type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script defer src='/js/admin_chart_board.js'></script>
<script defer type="text/javascript"></script>
</head>
<style>
#admin_chart_board{
	border : 1px solid rgba(33, 37, 41);
}
</style>


<body>
<h4>게시판통계</h4>
<div id="admin_chart_board">
	<span>게시판</span>
	<select name='board_select' >
	  <option value='mansearch'>구인게시판</option>
	  <option value='qnaboard'>QnA게시판</option>
	  <option value='freetalking'>자유게시판</option>
	  <option value='jobsearch'>구직게시판</option>
	  <option value='infoshare'>정보공유게시판</option>
	</select>
	<br/>
	<span>기간</span>
	<input type='date'> ~ <input type='date'>
	
	
	
</div>    
<div id="curve_chart" style="width: 900px; height: 500px"></div>

</body>
</html>