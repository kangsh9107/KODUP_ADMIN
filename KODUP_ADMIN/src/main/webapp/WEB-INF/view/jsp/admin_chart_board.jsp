<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_board.jsp</title>
<script defer src='/js/admin_chart_board.js'></script>
</head>
<style> 
#admin_chart_board{border : 1px solid #c8c9ca;width : 703px;height : 900px;margin-left: 40px;}
#admin_chart_board #admin_chart_header{position : relative;height: 50px;border-bottom : 1px solid #c8c9ca;}
#admin_chart_board #admin_chart_header_left{position : absolute;top : 10px;left :10px;line-height : 30px;}
#admin_chart_board #admin_chart_header_right{position : absolute;top : 10px;right :10px;}
#admin_chart_board #curve_chart{width: 700px;height: 400px; }
#admin_chart_board #curve_chart2{width: 700px;height: 400px; }
</style>
<body>
    <div style="padding-left:40px;">
	  <h3 style="font-weight: bold;">게시판 통계</h3>
		  <hr><br>
	</div>
<!-- HIDDEN -->
<form class='frm_chart_board' style="display:none;" >
	<input type='text' name='boardtype' value='${asVo.boardtype}' size='5'/>
	<input type='text' name='startNal' value="${asVo.startNal}"/>
	<input type='text' name='endNal'  value="${asVo.endNal}"/>
</form>
<div id="admin_chart_board" >
	<div id="admin_chart_header">
		<div id="admin_chart_header_left">
			<span>게시판</span>
			<select name='board_select' onchange='BoardTypeFilter(this.value)'>
			  <option value='qna' ${asVo.boardtype == 'qna' ? 'selected="selected"' : '' }>QnA게시판</option>
			  <option value='freetalking' ${asVo.boardtype == 'freetalking' ? 'selected="selected"' : '' }>자유게시판</option>
			  <option value='infoshare' ${asVo.boardtype == 'infoshare' ? 'selected="selected"' : '' }>정보공유게시판</option>
			  <option value='mansearch' ${asVo.boardtype == 'mansearch' ? 'selected="selected"' : '' }>구인게시판</option>
			  <option value='jobsearch' ${asVo.boardtype == 'jobsearch' ? 'selected="selected"' : '' }>구직게시판</option>
			</select>
		</div>
		<div id="admin_chart_header_right">
			<span>기간</span>
			<input type='date' id="startNal"value="${asVo.startNal}"onchange='StartNal(this.value)'> ~
			<input type='date' id="endNal" value="${asVo.endNal}" onchange='EndNal(this.value)'>
			<input type='button' value="조회" onclick="showChart()">
		</div>
	</div>
	<div class="admin_chart_main">
		<div id="curve_chart" ></div>
		<div id="curve_chart2" ></div>
	</div>
	
	
</div>
<!-- 차트데이터 HIDDEN -->
<!-- 데이터가0일때 right 조인 활용하여 ifnull하기 참고)https://byul91oh.tistory.com/480 -->
<div style="display:none;">
	<input type="text" id="BoardDataSize" value="${fn:length(BoardDataList)}">
	<c:forEach var="vo" items='${BoardDataList}' varStatus="status">
		<div>
			<input id="mDate${status.count}"      type="text" value="${vo.mDate}">
			<input id="countBoard${status.count}" type="text" value="${vo.countBoard}">
		</div>
	</c:forEach>
	<input type="text" id="ReplDataSize" value="${fn:length(ReplDataList)}">
	<c:forEach var="vo" items='${ReplDataList}' varStatus="status">
		<div>
			<input id="replmDate${status.count}" type="text" value="${vo.replmDate}">
			<input id="countRepl${status.count}" type="text" value="${vo.countRepl}">
		</div>
	</c:forEach>
</div>

</body>
</html>